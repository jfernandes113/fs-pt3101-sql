-- Borrado de todo
DROP TABLE IF EXISTS pokemons_elements;
DROP TABLE IF EXISTS gyms;
DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS elements;
DROP TABLE IF EXISTS leaders;

DROP TYPE IF EXISTS types;
DROP EXTENSION IF EXISTS "uuid-ossp";

-- Creación de extensiones y tipos
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TYPE types AS ENUM (
  'rock', 'ground', 'water', 'psychic', 'electric',
  'grass', 'poison', 'bug', 'fire', 'normal'
);

-- Creación de todas las tablas del esquema
CREATE TABLE IF NOT EXISTS leaders (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL,
  badge TEXT NOT NULL,
  description TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS elements (
  id uuid PRIMARY KEY NOT NULL DEFAULT uuid_generate_v4(),
  name types NOT NULL
);

CREATE TABLE IF NOT EXISTS pokemons (
  id smallint PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  level smallint NOT NULL DEFAULT 1,
  leader_id uuid REFERENCES leaders
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS gyms (
  id SERIAL PRIMARY KEY,
  city TEXT NOT NULL,
  leader_id uuid REFERENCES leaders
    ON UPDATE CASCADE
    ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS pokemons_elements (
  pokemon_id smallint REFERENCES pokemons (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  element_id uuid REFERENCES elements (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT pokemon_element_id PRIMARY KEY (pokemon_id, element_id)
);