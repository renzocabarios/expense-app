import { Router } from "express";
import {
  getAll,
  getById,
  add,
  update,
  removeOne,
  increment,
} from "./controller";

const router = Router();
router.route("/").get(getAll).post(add);
router.route("/:id").get(getById).patch(update).delete(removeOne);
router.route("/:id/increment").patch(increment);

export default router;
