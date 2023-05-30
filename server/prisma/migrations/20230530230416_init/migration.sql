-- CreateTable
CREATE TABLE "Movies" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "synopsis" TEXT NOT NULL,
    "duration" TEXT NOT NULL,
    "coverUrl" TEXT NOT NULL,
    "idGenre" TEXT NOT NULL,
    "idAudio" TEXT NOT NULL,
    "idRating" TEXT NOT NULL,
    "idLanguage" TEXT NOT NULL,

    CONSTRAINT "Movies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Genres" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Genres_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Audios" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Audios_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Languages" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    CONSTRAINT "Languages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Ratings" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "acronym" TEXT NOT NULL,

    CONSTRAINT "Ratings_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Schedules" (
    "id" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "time" TEXT NOT NULL,
    "idTheater" TEXT NOT NULL,
    "idMovie" TEXT NOT NULL,

    CONSTRAINT "Schedules_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Theater" (
    "id" TEXT NOT NULL,
    "number" TEXT NOT NULL,
    "seats" INTEGER NOT NULL,

    CONSTRAINT "Theater_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Movies_name_key" ON "Movies"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Genres_name_key" ON "Genres"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Audios_name_key" ON "Audios"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Languages_name_key" ON "Languages"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Ratings_name_key" ON "Ratings"("name");

-- CreateIndex
CREATE UNIQUE INDEX "Ratings_acronym_key" ON "Ratings"("acronym");

-- CreateIndex
CREATE UNIQUE INDEX "Theater_number_key" ON "Theater"("number");

-- AddForeignKey
ALTER TABLE "Movies" ADD CONSTRAINT "Movies_idGenre_fkey" FOREIGN KEY ("idGenre") REFERENCES "Genres"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Movies" ADD CONSTRAINT "Movies_idAudio_fkey" FOREIGN KEY ("idAudio") REFERENCES "Audios"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Movies" ADD CONSTRAINT "Movies_idRating_fkey" FOREIGN KEY ("idRating") REFERENCES "Ratings"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Movies" ADD CONSTRAINT "Movies_idLanguage_fkey" FOREIGN KEY ("idLanguage") REFERENCES "Languages"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Schedules" ADD CONSTRAINT "Schedules_idTheater_fkey" FOREIGN KEY ("idTheater") REFERENCES "Theater"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Schedules" ADD CONSTRAINT "Schedules_idMovie_fkey" FOREIGN KEY ("idMovie") REFERENCES "Movies"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
