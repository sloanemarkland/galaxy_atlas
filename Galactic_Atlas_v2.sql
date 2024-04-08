CREATE TABLE "Solar_Systems" (
  "system_id" int PRIMARY KEY,
  "name" varchar,
  "planets" varchar,
  "image" varchar
);

CREATE TABLE "Planets" (
  "planet_id" integer PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "atmosphere" varchar,
  "average_temp" varchar,
  "mass" integer,
  "moons" integer,
  "distance_from_star" integer,
  "flora" varchar,
  "fauna" varchar,
  "image" varchar
);

CREATE TABLE "Flora" (
  "flora_id" integer PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "planet" varchar,
  "environment" varchar,
  "life_span" varchar,
  "image" varchar
);

CREATE TABLE "Fauna" (
  "fauna_id" integer PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "planet" varchar,
  "environment" varchar,
  "diet" varchar,
  "behavior" varchar,
  "predators" varchar,
  "lifespan" varchar,
  "image" varchar
);

ALTER TABLE "Planets" ADD FOREIGN KEY ("planet_id") REFERENCES "Solar_Systems" ("planets");

ALTER TABLE "Flora" ADD FOREIGN KEY ("flora_id") REFERENCES "Planets" ("flora");

ALTER TABLE "Fauna" ADD FOREIGN KEY ("fauna_id") REFERENCES "Planets" ("fauna");