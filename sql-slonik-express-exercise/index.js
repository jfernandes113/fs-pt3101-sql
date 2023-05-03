const express = require('express');
const { createPool } = require('slonik');
const router = express.Router();

const pool = createPool('postgres://user1:1234@db/prueba');

router.get('/types', async (req, res, next) => {
  try {
    const result = await pool.query('SELECT name FROM types');
    const types = result.rows.map(row => row.name);
    res.json({ data: types });
  } catch (err) {
    console.error(err);
    next(err);
  }
});

router.get('/pokemons', async (req, res, next) => {
  try {
    let types = [];
    let query = '';

    // Si hay un tipo1 en los query params, lo agregamos al array types
    if (req.query.type1) {
      types.push(req.query.type1);
      query = 'SELECT * FROM pokemons WHERE types @> $1::text[]';
    } else {
      query = 'SELECT * FROM pokemons';
    }

    // Si hay un tipo2 en los query params, lo agregamos al array types y modificamos la consulta
    if (req.query.type2) {
      types.push(req.query.type2);
      query = 'SELECT * FROM pokemons WHERE types @> $1::text[] AND types @> $2::text[]';
    }

    // Ejecuta la consulta con los tipos seleccionados (si hay alguno)
    let result;
    if (types.length > 0) {
      result = await pool.query(query, [types]);
    } else {
      result = await pool.query(query);
    }

    res.json({ data: result.rows });
  } catch (err) {
    console.error(err);
    next(err);
  }
});

module.exports = router;
