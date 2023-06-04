BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "usuario" (
	"userId"	TEXT NOT NULL,
	"nome_completo"	TEXT,
	"sobre_mim"	TEXT,
	"formacao"	TEXT,
	"experiencia"	TEXT,
	"realizacoes"	TEXT,
	"cargo"	TEXT,
	PRIMARY KEY("userId")
);
INSERT INTO "usuario" VALUES ('7','dasas',NULL,NULL,NULL,NULL,NULL);
COMMIT;
