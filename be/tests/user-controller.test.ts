import request from "supertest";
import app from "../app";
// import userService from "../app/routes/v1/users/service";
import { POST, createAction, createUser, getRandomNumber } from "./helpers";
import { ClientSession, startSession } from "mongoose";

describe("user controller", () => {
  // it("should create a user", async () => {
  //   const tgId = getRandomNumber(100000000, 999999999);
  //   await request(app).post("/api/v1/users").send({
  //     tgId,
  //   });
  //   const res = await request(app).get("/api/v1/users");
  //   expect(res.body.data.length).toBeGreaterThan(0);
  //   expect(res.body.data[0].tgId).toBe(tgId);
  // });
  // it("should start an action", async () => {
  //   const user = await createUser(app, {
  //     tgId: getRandomNumber(100000000, 999999999),
  //   });
  //   const action = await createAction(app, {
  //     name: "Paw & Order: Canine Crime Unit",
  //     multiplier: getRandomNumber(1, 10000),
  //     base: getRandomNumber(1, 10000),
  //     duration: getRandomNumber(1, 10000),
  //     baseCost: getRandomNumber(1, 10000),
  //     costMultiplier: getRandomNumber(1, 10000),
  //   });
  //   const response = await request(app)
  //     .post(`/api/v1/users/${user._id}/start`)
  //     .send({
  //       ...action,
  //       action: action._id,
  //     });
  //   expect(response.body.data[0].actions.length).toBeGreaterThan(0);
  //   expect(response.body.data[0].actions[0].endTime).toBeGreaterThan(0);
  // });
  // it("should end an action", async () => {
  //   let user = await createUser(app, {
  //     tgId: getRandomNumber(100000000, 999999999),
  //   });
  //   const action = await createAction(app, {
  //     name: "Paw & Order: Canine Crime Unit",
  //     multiplier: getRandomNumber(1, 10000),
  //     base: getRandomNumber(1, 10000),
  //     duration: getRandomNumber(1, 10000),
  //     baseCost: getRandomNumber(1, 10000),
  //     costMultiplier: getRandomNumber(1, 10000),
  //   });
  //   user = (
  //     await POST(app, `/api/v1/users/${user._id}/start`, {
  //       ...action,
  //       action: action._id,
  //     })
  //   ).data[0];
  //   const parsedAction = {
  //     ...user.actions[0],
  //     ...action,
  //   };
  //   user = (
  //     await POST(app, `/api/v1/users/${user._id}/end`, {
  //       ...parsedAction,
  //     })
  //   ).data[0];
  //   expect(user.score).toBeGreaterThan(0);
  //   expect(user.actions[0].endTime).toBe(0);
  // });
  // it("should start multiple actions", async () => {
  //   const user = await createUser(app, {
  //     tgId: getRandomNumber(100000000, 999999999),
  //   });
  //   const action1 = await createAction(app, {
  //     name: "Paw & Order: Canine Crime Unit",
  //     multiplier: getRandomNumber(1, 10000),
  //     base: getRandomNumber(1, 10000),
  //     duration: getRandomNumber(1, 10000),
  //     baseCost: getRandomNumber(1, 10000),
  //     costMultiplier: getRandomNumber(1, 10000),
  //   });
  //   const action2 = await createAction(app, {
  //     name: "Paw & Order: Canine Crime Unit",
  //     multiplier: getRandomNumber(1, 10000),
  //     base: getRandomNumber(1, 10000),
  //     duration: getRandomNumber(1, 10000),
  //     baseCost: getRandomNumber(1, 10000),
  //     costMultiplier: getRandomNumber(1, 10000),
  //   });
  //   await request(app)
  //     .post(`/api/v1/users/${user._id}/start-actions`)
  //     .send({
  //       actions: [action2, action1].map((e: any) => ({ ...e, action: e._id })),
  //     });
  //   const response = await request(app).get(`/api/v1/users/${user._id}`).send();
  //   expect(response.body.data[0].actions.length).toBe(2);
  // });
  // No Tests for levelling up
  // it("should level up action", async () => {
  //   const session: ClientSession = await startSession();
  //   let user = (
  //     await userService.add(
  //       {
  //         tgId: getRandomNumber(100000000, 999999999),
  //         score: 999999,
  //       },
  //       session
  //     )
  //   )[0];
  //   const action1 = await createAction(app, {
  //     name: "Paw & Order: Canine Crime Unit",
  //     multiplier: getRandomNumber(1, 10000),
  //     base: getRandomNumber(1, 10000),
  //     duration: getRandomNumber(1, 10000),
  //     baseCost: getRandomNumber(1, 10000),
  //     costMultiplier: getRandomNumber(1, 10000),
  //   });
  //   console.log({
  //     action: action1._id,
  //     ...action1,
  //   });
  //   await request(app)
  //     .post(`/api/v1/users/${user._id}/level-up`)
  //     .send({
  //       action: action1._id,
  //       ...action1,
  //     });
  //   const response = await request(app).get(`/api/v1/users/${user._id}`).send();
  //   console.log(response.body);
  //   // expect(response.body.data[0].actions.length).toBe(2);
  // });
});
