import fastify from "fastify";
import cors from "@fastify/cors";

import { moviesRoutes } from "./routes/movies";
import { resolve } from "path";

const app = fastify();

app.register(cors, {
  origin: true,
});

app.register(require("@fastify/static"), {
  root: resolve(__dirname, "../public"),
  prefix: "/public",
});

app.register(moviesRoutes);

app
  .listen({
    port: 3333,
  })
  .then(() => {
    console.log("Server running ON http://localhost:3333 🚀");
  });
