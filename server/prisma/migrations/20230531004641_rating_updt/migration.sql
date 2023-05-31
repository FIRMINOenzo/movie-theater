/*
  Warnings:

  - You are about to drop the column `name` on the `Ratings` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX "Ratings_name_key";

-- AlterTable
ALTER TABLE "Ratings" DROP COLUMN "name";
