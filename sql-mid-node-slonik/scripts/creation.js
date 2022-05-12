const db = require("../configs/db");
const { sql } = require("slonik");

const deleteAll = async () => {
  await db.transaction(async (tx) => {
    await tx.query(sql`
      DROP TABLE IF EXISTS books;
    `);

    await tx.query(sql`
      DROP TABLE IF EXISTS users;
    `);
  });
};

const users = async () => {
  await db.query(sql`
    CREATE TABLE IF NOT EXISTS users (
      id TEXT PRIMARY KEY,
      name TEXT NOT NULL,
      dni TEXT UNIQUE NOT NULL,
      birthdate DATE NOT NULL
    );
  `);
};

const books = async () => {
  await db.query(sql`
    CREATE TABLE IF NOT EXISTS books (
      id TEXT PRIMARY KEY,
      name TEXT NOT NULL,
      isbn TEXT UNIQUE NOT NULL,
      author TEXT,
      rented_id TEXT REFERENCES users
        ON UPDATE CASCADE
        ON DELETE SET NULL
    );
  `);
};

const main = async () => {
  try {
    await deleteAll();
    console.info("> tables dropped!");
    await users();
    console.info("> users created!");
    await books();
    console.info("> books created");
  } catch (error) {
    console.info("> something went wrong creating a table!");
    console.error(error);
  }
};

main();
