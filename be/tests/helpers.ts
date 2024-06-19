import request from "supertest";
import { Express } from "express";

export function getRandomNumber(min: number, max: number) {
  return Math.floor(Math.random() * (max - min) + min);
}

export async function createUser(app: Express, args: any) {
  const response = await request(app)
    .post("/api/v1/users")
    .send({
      ...args,
    });
  expect(response.body.data.length).toBeGreaterThan(0);
  return response.body.data[0];
}

export async function createAction(app: Express, args: any) {
  const response = await request(app)
    .post("/api/v1/actions")
    .send({
      ...args,
    });
  expect(response.body.data.length).toBeGreaterThan(0);
  return response.body.data[0];
}

export async function POST(app: Express, url: string, args: any) {
  const response = await request(app)
    .post(url)
    .send({
      ...args,
    });
  return response.body;
}
