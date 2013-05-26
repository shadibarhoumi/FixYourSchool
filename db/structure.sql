CREATE TABLE "addresses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "city" varchar(255), "state" text, "zipcode" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "school_id" integer);
CREATE TABLE "petitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "school_id" integer, "user_id" integer, "description" text, "goal" integer, "title" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "schools" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "signatures" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "petition_id" integer, "reason" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "targets" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE INDEX "index_petitions_on_school_id" ON "petitions" ("school_id");
CREATE INDEX "index_petitions_on_user_id" ON "petitions" ("user_id");
CREATE INDEX "index_signatures_on_petition_id" ON "signatures" ("petition_id");
CREATE INDEX "index_signatures_on_user_id" ON "signatures" ("user_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20130525215812');

INSERT INTO schema_migrations (version) VALUES ('20130525215856');

INSERT INTO schema_migrations (version) VALUES ('20130525215916');

INSERT INTO schema_migrations (version) VALUES ('20130525215949');

INSERT INTO schema_migrations (version) VALUES ('20130525220025');

INSERT INTO schema_migrations (version) VALUES ('20130525220525');

INSERT INTO schema_migrations (version) VALUES ('20130525221612');

INSERT INTO schema_migrations (version) VALUES ('20130526010904');