CREATE TABLE "Lenguajes" (
    "id" SERIAL PRIMARY KEY NOT NULL,
    "name" VARCHAR(20) NOT NULL,
    "creator" VARCHAR(30) NOT NULL,
    "created" DATE NOT NULL,
    "paradigm" VARCHAR(100)
);