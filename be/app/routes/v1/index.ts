import recordsRoute from "./records/route";
import { IRoutes, IRoute } from "../../types";

const routes: IRoutes = [
  {
    url: "records",
    route: recordsRoute,
  },
];

export default routes.map((e: IRoute) => {
  e.url = `v1/${e.url}`;
  return e;
});
