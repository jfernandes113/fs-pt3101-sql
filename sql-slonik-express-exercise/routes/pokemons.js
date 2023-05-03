const express = require('express');
const { sql } = require('../db');

const router = express.Router();

router.get('/', async (req, res) => {
  try {
    let types = [];

    if (req.query.type1) {
      types.push(req.query.type1);
    }

    if (req.query.type2) {
      types.push(req.query.type2);
    }

    let result;

    if (types.length > 0) {
      result = await req.db.query(sql`
        SELECT p.id, p.name, array_agg(t.name) as types
        FROM pokemons p
        JOIN pokemons_types pt ON p.id = pt.pokemon_id
        JOIN types t ON pt.type_id = t.id
        WHERE t.name = ANY(${types})
        GROUP BY p.id
      `);
    } else {
      result = await req.db.query(sql`
        SELECT p.id, p.name, array_agg(t.name) as types
        FROM pokemons p
        JOIN pokemons_types pt ON p.id = pt.pokemon_id
        JOIN types t ON pt.type_id = t.id
        GROUP BY p.id
      `);
    }

    res.json({ data: result.rows });
  } catch (err) {
    console.error(err);
    res.status(500).send('Error retrieving pokemons from database');
  }
});

module.exports = router;
