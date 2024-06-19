import { Schema, model } from "mongoose";
import { RESOURCE } from "../../../constants";

const option = {
  timestamps: true,
};

export const SECONDS: number = 1000;
export const MINUTES: number = SECONDS * 60;
export const HOURS: number = MINUTES * 60;
export const DAYS: number = HOURS * 24;
export const WEEKS: number = DAYS * 7;

const schema = new Schema({
  name: {
    type: String,
    required: true,
  },
  multiplier: {
    type: Number,
    default: 1.2,
  },
  base: {
    type: Number,
    default: 100,
  },
  duration: {
    type: Number,
    default: SECONDS * 10,
  },
  baseCost: {
    type: Number,
    default: SECONDS * 10,
  },
  costMultiplier: {
    type: Number,
    default: SECONDS * 10,
  },
  duration_multiplier: {
    type: Number,
    default: SECONDS * 10,
  },
  deleted: {
    type: Boolean,
    default: false,
  },
});

export default model(RESOURCE.ACTIONS, schema);
