import { Schema, model } from "mongoose";
import { RESOURCE } from "../../../constants";
import { IExpenseModel } from "../../../types";

const option = {
  timestamps: true,
};

const schema = new Schema<IExpenseModel>(
  {
    name: {
      type: String,
      required: true,
    },
    amount: {
      type: Number,
      required: true,
    },
    deleted: {
      type: Boolean,
      default: false,
    },
  },
  option
);

export default model(RESOURCE.EXPENSES, schema);
