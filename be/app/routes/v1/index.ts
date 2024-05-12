import expensesRoute from "./expenses/route";
import { IRoutes, IRoute } from "../../types";

const routes: IRoutes = [
  {
    url: "expenses",
    route: expensesRoute,
  },
];

export default routes.map((e: IRoute) => {
  e.url = `v1/${e.url}`;
  return e;
});
