const { sql } = require("slonik");

const selectAll = (db) => async () => {
  try {
    const result = await db.query(sql`
      SELECT name, author, isbn FROM books;
    `);

    return {
      ok: true,
      data: result.rows,
    };
  } catch (error) {
    console.info('> error at "selectAll" query from "books"');
    console.error(error.message);

    return {
      ok: false,
    };
  }
};

module.exports = {
  selectAll,
};
