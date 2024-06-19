import { IQuery } from "../../../types";
import model from "./model";

async function getMaxCount({ filter }: IQuery) {
  const { __t, ...res } = filter;
  return await model.countDocuments({ deleted: false, ...res });
}

async function getAll({
  page = 1,
  limit = 10,
  filter = {},
  sort,
  populate = "",
}: IQuery) {
  const { __t, ...res } = filter;
  return await model
    .find({ ...res, deleted: false, __t })
    .populate(populate)
    .sort(sort)
    .limit(limit * 1)
    .skip(limit == 0 ? 0 : (page - 1) * limit);
}

async function getOne(filter: any) {
  return await model.findOne({ ...filter, deleted: false });
}

async function getById(_id: string) {
  return await model.findOne({ _id, deleted: false });
}

async function add(_body: Partial<any>, options: any) {
  return await model.create([_body], { options });
}

async function update(filter: any, _body: Partial<any>, options: any) {
  return await model.findOneAndUpdate(filter, _body, { ...options });
}

async function removeOne(filter: any, options: any) {
  return await model.findOneAndUpdate(
    filter,
    { deleted: true },
    { ...options }
  );
}

export default {
  getAll,
  getMaxCount,
  getById,
  add,
  update,
  removeOne,
  getOne,
};
