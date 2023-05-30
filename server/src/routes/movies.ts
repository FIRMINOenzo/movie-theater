import { FastifyInstance } from "fastify";
import { prisma } from "../lib/prisma";

export async function moviesRoutes(app: FastifyInstance) {
  app.get("/movies", () => {
    // basic infos for show in home page -> name & coverUrl

    return prisma.movies.findMany({
      select: {
        name: true,
        coverUrl: true,
      },
    });
  });
}
