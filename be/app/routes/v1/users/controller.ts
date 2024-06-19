import service from "./service";
import {
  transaction,
  generateAccess,
  getFilterQuery,
} from "../../../utils/index";
import bcrypt from "bcrypt";
import { startSession, ClientSession } from "mongoose";
import { Request, Response } from "express";
import ENV from "../../../env";

const getAll = async (_req: Request, _res: Response) => {
  const { page = 1, limit = 10, populate = "" } = _req.query;

  const filter = getFilterQuery(_req.query.filter);
  const sort = getFilterQuery(_req.query.sort);

  const data = await service.getAll({
    filter,
    sort,
    page: Number(page),
    limit: Number(limit),
    populate: populate.toString(),
  });

  const max = await service.getMaxCount({ filter });

  _res.send({
    data,
    status: "success",
    message: "Get user success",
    meta: {
      access: generateAccess({}),
      page,
      limit,
      max,
    },
  });
};

const getById = async (_req: Request, _res: Response) => {
  const { id } = _req.params;
  const data = await service.getById(id);
  _res.send({
    data,
    status: "success",
    message: "Get user success",
    meta: {
      access: generateAccess({}),
    },
  });
};

const add = async (_req: Request, _res: Response) => {
  const session: ClientSession = await startSession();
  const { password, ...res } = _req.body;

  const hashed = await bcrypt.hash(password, ENV.HASH_SALT);
  _res.send(
    await transaction(
      session,
      async () => {
        return await service.add({ password: hashed, ...res }, { session });
      },
      "Create user"
    )
  );
};

const update = async (_req: Request, _res: Response) => {
  const session: ClientSession = await startSession();
  const { id } = _req.params;
  _res.send(
    await transaction(
      session,
      async () => {
        return await service.update(
          { _id: id },
          { ..._req.body },
          { session, new: true }
        );
      },
      "Update user"
    )
  );
};

const removeOne = async (_req: Request, _res: Response) => {
  const session: ClientSession = await startSession();

  const { id } = _req.params;
  _res.send(
    await transaction(
      session,
      async () => {
        return await service.removeOne({ _id: id }, { session, new: true });
      },
      "Delete user"
    )
  );
};

export { getAll, getById, add, update, removeOne };
