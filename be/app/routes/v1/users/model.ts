import { Schema, model } from "mongoose";
import { RESOURCE } from "../../../constants";

const option = {
  timestamps: true,
};

const schema = new Schema(
  {
    email: {
      type: String,
      required: true,
    },
    password: {
      type: String,
      required: true,
    },
    deleted: {
      type: Boolean,
      default: false,
    },
  },
  option
);

export default model(RESOURCE.USERS, schema);
