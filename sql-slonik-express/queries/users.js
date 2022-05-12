const { sql } = require("slonik");

const selectAll = (db) => async () => {
  try {
    const result = await db.query(sql`
      SELECT name, dni FROM users;
    `);

    return {
      ok: true,
      data: result.rows,
    };
  } catch (error) {
    console.info('> error at "selectAll" query from users');
    console.error(error.message);

    return {
      ok: false,
    };
  }
};

const selectBy = (db) => async (col, value) => {
  try {
    const result = await db.query(sql`
      SELECT name, dni FROM users
      WHERE ${sql.identifier(["users", col])} = ${value}
    `);
    return {
      ok: true,
      data: result.rows[0],
    };
  } catch (error) {
    console.info('> error at "selectBy" query from users');
    console.error(error.message);

    return {
      ok: false,
    };
  }
};

module.exports = {
  selectAll,
  selectBy,
};
