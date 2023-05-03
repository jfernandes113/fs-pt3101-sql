const express = require('express');
const router = express.Router();

// Importamos las rutas de pokemons
const pokemonsRouter = require('./pokemons');

// Asociamos las rutas de pokemons a /pokemons
router.use('/pokemons', pokemonsRouter);

module.exports = router;