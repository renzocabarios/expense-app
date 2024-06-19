import { Schema, model } from "mongoose";
import { RESOURCE } from "../../../constants";

const option = {
  timestamps: true,
};

const schema = new Schema({
  name: {
    type: String,
    required: true,
  },
  value: {
    type: Number,
    default: 0,
  },
  deleted: {
    type: Boolean,
    default: false,
  },
});

export default model(RESOURCE.RECORDS, schema);
