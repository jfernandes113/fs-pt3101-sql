const db = require("../configs/db");
const { sql } = require("slonik");

// Obtener todos los usuario
const e1 = async () => {
  return await db.query(sql`
    SELECT name, dni FROM users;
  `);
};

// Obtener todos los libros
const e2 = async () => {
  return await db.query(sql`
    SELECT name, isbn, author FROM books;
  `);
};

// Obtener todos los usuarios que han alquilado
// nombre usuario, nombre libro, isbn, autor
const e3 = async () => {
  return await db.query(sql`
    SELECT users.name as user, books.name as book, isbn, author
    FROM users
    INNER JOIN books
    ON users.id = books.rented_id;
  `);
};

// Libros que nos han sido alquilados
const e4 = async () => {
  return await db.maybeOne(sql`
    SELECT name, author, isbn FROM books
    WHERE rented_id IS NULL;
  `);
};

const main = async () => {
  try {
    console.info("> e1: ", (await e1()).rows);
    console.info("> e2: ", (await e2()).rows);
    console.info("> e3: ", (await e3()).rows);
    console.info("> e4: ", await e4());
  } catch (error) {
    console.info("> something went wrong creating a table!");
    console.error(error);
  }
};

main();
