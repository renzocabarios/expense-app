import { Schema, model } from "mongoose";
import { RESOURCE } from "../../../constants";

const option = {
  timestamps: true,
};

const schema = new Schema(
  {
    name: {
      type: String,
      required: true,
    },
    value: {
      type: Number,
      default: 0,
    },
    user: {
      type: Schema.Types.ObjectId,
      required: true,
    },
    deleted: {
      type: Boolean,
      default: false,
    },
  },
  option
);

export default model(RESOURCE.RECORDS, schema);
