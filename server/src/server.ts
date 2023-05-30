import fastify from "fastify";

import { moviesRoutes } from "./routes/movies";

const app = fastify();

app.register(moviesRoutes);

app
  .listen({
    port: 3333,
  })
  .then(() => {
    console.log("Server running ON http://localhost:3333 🚀");
  });
