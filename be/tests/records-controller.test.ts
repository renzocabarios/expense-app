import request from "supertest";
import app from "../app";
import { getRandomNumber } from "./helpers";

describe("records controller", () => {
  it("should create a record", async () => {
    await request(app)
      .post("/api/v1/records")
      .send({
        name: "Test",
        value: getRandomNumber(1, 10000),
      });
    const res = await request(app).get("/api/v1/records");
    expect(res.body.data.length).toBeGreaterThan(0);
  });
});
