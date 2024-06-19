import request from "supertest";
import app from "../app";
import { getRandomNumber } from "./helpers";

describe("action controller", () => {
  // it("should create a action", async () => {
  //   await request(app)
  //     .post("/api/v1/actions")
  //     .send({
  //       name: "Paw & Order: Canine Crime Unit",
  //       multiplier: getRandomNumber(1, 10000),
  //       base: getRandomNumber(1, 10000),
  //       duration: getRandomNumber(1, 10000),
  //       duration_multiplier: getRandomNumber(1, 10000),
  //     });
  //   const res = await request(app).get("/api/v1/actions");
  //   expect(res.body.data.length).toBeGreaterThan(0);
  // });
});
