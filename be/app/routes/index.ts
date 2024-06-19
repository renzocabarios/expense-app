import V1 from "./v1";
import DEV from "./dev";
import TG from "./tg";
import { Express } from "express";

export const addRoutes = (app: Express) => {
  [...V1, ...DEV, ...TG].forEach((route) => {
    app.use(`/api/${route.url}`, route.route);
  });
};
