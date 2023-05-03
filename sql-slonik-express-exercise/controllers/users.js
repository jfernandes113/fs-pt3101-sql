const { sql } = require('slonik');

const createUser = async (req, res) => {
  try {
    const { name, email } = req.body;
    const result = await pool.query(sql`
      INSERT INTO users (name, email)
      VALUES (${name}, ${email})
      RETURNING id, name, email
    `);
    res.json(result.rows[0]);
  } catch (error) {
    console.error(error);
    res.status(500).send('Internal Server Error');
  }
};

module.exports = {
  createUser,
};
