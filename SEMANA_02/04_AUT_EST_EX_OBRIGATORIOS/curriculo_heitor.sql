BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pessoa" (
	"id_pessoa"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"foto"	BLOB,
	PRIMARY KEY("id_pessoa" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"id_exp"	INTEGER NOT NULL,
	"nome_empresa"	NUMERIC NOT NULL,
	"data_in_exp"	TEXT NOT NULL,
	"data_fim_exp"	TEXT,
	"desc_exp"	TEXT NOT NULL,
	"id_cargo"	INTEGER,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_exp" AUTOINCREMENT),
	FOREIGN KEY("id_cargo") REFERENCES "cargo",
	FOREIGN KEY("id_pessoa") REFERENCES "pessoa"
);
CREATE TABLE IF NOT EXISTS "formacao" (
	"id_curso"	INTEGER NOT NULL,
	"nome_curso"	INTEGER NOT NULL,
	"data_in_curso"	TEXT NOT NULL,
	"data_fim_curso"	TEXT,
	"desc_curso"	TEXT NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_curso" AUTOINCREMENT),
	FOREIGN KEY("id_pessoa") REFERENCES "pessoa"("id_pessoa")
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"id_realizacao"	INTEGER NOT NULL,
	"nome_realizacao"	TEXT NOT NULL,
	"data_in_realizacao"	TEXT NOT NULL,
	"data_fim_realizacao"	TEXT,
	"desc_realizacao"	TEXT NOT NULL,
	"id_pessoa"	INTEGER,
	PRIMARY KEY("id_realizacao" AUTOINCREMENT),
	FOREIGN KEY("id_pessoa") REFERENCES "pessoa"("id_pessoa")
);
CREATE TABLE IF NOT EXISTS "sobre mim" (
	"endereco"	TEXT NOT NULL,
	"telefone"	INTEGER NOT NULL,
	"email"	TEXT NOT NULL,
	"desc_sobre_mim"	TEXT NOT NULL,
	"id_pessoa"	INTEGER,
	FOREIGN KEY("id_pessoa") REFERENCES "pessoa"("id_pessoa")
);
CREATE TABLE IF NOT EXISTS "cargo" (
	"id_cargo"	INTEGER NOT NULL,
	"nome_cargo"	TEXT NOT NULL,
	PRIMARY KEY("id_cargo" AUTOINCREMENT)
);
COMMIT;
