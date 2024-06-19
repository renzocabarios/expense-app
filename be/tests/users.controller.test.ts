import request from "supertest";
import app from "../app";
import { getRandomNumber } from "./helpers";

describe("users controller", () => {
  it("should create a user", async () => {
    await request(app).post("/api/v1/users").send({
      email: "Test",
      password: "password",
    });
    const res = await request(app).get("/api/v1/users");
    expect(res.body.data.length).toBeGreaterThan(0);
  });
});
