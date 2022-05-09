const db = require("../configs/db");
const { sql } = require("slonik");
const { v4: uuidv4 } = require("uuid");

const usersJSON = require("../seeds/users.json");
const booksJSON = require("../seeds/books.json");

const deleteAll = async () => {
  return await db.transaction(async (tx) => {
    await tx.query(sql`
      DELETE FROM books;
    `);

    await tx.query(sql`
      DELETE FROM users;
    `);
  });
};

const insertUser = async ({ name, dni }) => {
  return await db.query(sql`
    INSERT INTO users (
        id, name, dni
      ) VALUES (
        ${uuidv4()}, ${name}, ${dni}
    ) ON CONFLICT DO NOTHING;
  `);
};

const getIdFromUser = (dni) => {
  return sql`
    SELECT id FROM users WHERE dni = ${dni}
  `;
};

const insertBook = async ({ name, author, isbn, rented_dni = null }) => {
  return await db.query(sql`
    INSERT INTO books (
      id, name, author, isbn, rented_id
    ) VALUES (
      ${uuidv4()}, ${name}, ${author}, ${isbn},
      (${getIdFromUser(rented_dni)})
    ) ON CONFLICT DO NOTHING;
  `);
};

const main = async () => {
  try {
    await deleteAll();
    console.info("> data deleted!");

    await Promise.all(usersJSON.map((user) => insertUser(user)));
    console.info("> users inserted!");

    for await (const book of booksJSON) {
      await insertBook(book);
    }
    console.info("> books inserted!");
  } catch (error) {
    console.info("> something went wrong creating a table!");
    console.error(error);
  }
};

main();
