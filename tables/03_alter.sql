ALTER TABLE "Lenguajes"
DROP COLUMN "latest_version";

ALTER TABLE "Lenguajes"
ADD COLUMN "latest_version" VARCHAR(10);

ALTER TABLE "Lenguajes"
RENAME COLUMN "paradigm" TO "paradigms";

ALTER TABLE "Lenguajes"
MODIFY COLUMN "paradigms" VARCHAR(200);