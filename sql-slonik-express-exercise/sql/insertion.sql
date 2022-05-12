-- Inserción de filas para "LEADERS"
INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Brock', 'Boulder Badge', 'Rock type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Misty', 'Cascade Badge', 'Water type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Lt. Surge', 'Thunder Badge', 'Electric type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Erika', 'Rainbow Badge', 'Grass type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Koga', 'Soul Badge', 'Poison type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Sabrina', 'Marsh Badge', 'Psychic type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Blaine', 'Volcano Badge', 'Fire type Pokémon'
);

INSERT INTO leaders (
  name, badge, description
) VALUES (
  'Giovanni', 'Earth Badge', 'Ground type Pokémon'
);

-- Inserción de filas para "ELEMENTS"
INSERT INTO elements (
  name
) VALUES (
  'rock'::types
);

INSERT INTO elements (
  name
) VALUES (
  'ground'::types
);

INSERT INTO elements (
  name
) VALUES (
  'water'::types
);

INSERT INTO elements (
  name
) VALUES (
  'psychic'::types
);

INSERT INTO elements (
  name
) VALUES (
  'electric'::types
);

INSERT INTO elements (
  name
) VALUES (
  'grass'::types
);

INSERT INTO elements (
  name
) VALUES (
  'poison'::types
);

INSERT INTO elements (
  name
) VALUES (
  'bug'::types
);

INSERT INTO elements (
  name
) VALUES (
  'fire'::types
);

INSERT INTO elements (
  name
) VALUES (
  'normal'::types
);

-- Inserción de filas para "POKÉMONS"
INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  74, 'Geodude', 10, (
    SELECT id FROM leaders WHERE name LIKE 'Brock'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  95, 'Onix', 12, (
    SELECT id FROM leaders WHERE name LIKE 'Brock'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  120, 'Staryu', 18, (
    SELECT id FROM leaders WHERE name LIKE 'Misty'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  121, 'Starmie', 21, (
    SELECT id FROM leaders WHERE name LIKE 'Misty'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  26, 'Raichu', 28, (
    SELECT id FROM leaders WHERE name LIKE 'Lt. Surge'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  114, 'Tangela', 30, (
    SELECT id FROM leaders WHERE name LIKE 'Erika'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  70, 'Weepinbell', 32, (
    SELECT id FROM leaders WHERE name LIKE 'Erika'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  44, 'Gloom', 32, (
    SELECT id FROM leaders WHERE name LIKE 'Erika'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  48, 'Venonat', 44, (
    SELECT id FROM leaders WHERE name LIKE 'Koga'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  49, 'Venomoth', 50, (
    SELECT id FROM leaders WHERE name LIKE 'Koga'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  63, 'Abra', 50, (
    SELECT id FROM leaders WHERE name LIKE 'Sabrina'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  64, 'Kadabra', 50, (
    SELECT id FROM leaders WHERE name LIKE 'Sabrina'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  65, 'Alakazam', 50, (
    SELECT id FROM leaders WHERE name LIKE 'Sabrina'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  38, 'Ninetales', 48, (
    SELECT id FROM leaders WHERE name LIKE 'Blaine'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  78, 'Rapidash', 50, (
    SELECT id FROM leaders WHERE name LIKE 'Blaine'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  59, 'Arcanine', 54, (
    SELECT id FROM leaders WHERE name LIKE 'Blaine'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  51, 'Dugtrio', 50, (
    SELECT id FROM leaders WHERE name LIKE 'Giovanni'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  53, 'Persian', 53, (
    SELECT id FROM leaders WHERE name LIKE 'Giovanni'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  31, 'Nidoqueen', 53, (
    SELECT id FROM leaders WHERE name LIKE 'Giovanni'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  34, 'Nidoking', 55, (
    SELECT id FROM leaders WHERE name LIKE 'Giovanni'
  )
);

INSERT INTO pokemons (
  id, name, level, leader_id
) VALUES (
  112, 'Rhydon', 55, (
    SELECT id FROM leaders WHERE name LIKE 'Giovanni'
  )
);

-- Inserción de filas para "GYMS"
INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Pewter City', (
    SELECT id FROM leaders WHERE name LIKE 'Brock'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Cerulean City', (
    SELECT id FROM leaders WHERE name LIKE 'Misty'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Vermilion City', (
    SELECT id FROM leaders WHERE name LIKE 'Lt. Surge'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Celadon City', (
    SELECT id FROM leaders WHERE name LIKE 'Erika'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Fuchsia City', (
    SELECT id FROM leaders WHERE name LIKE 'Koga'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Saffron City', (
    SELECT id FROM leaders WHERE name LIKE 'Sabrina'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Cinnabar City', (
    SELECT id FROM leaders WHERE name LIKE 'Blaine'
  )
);

INSERT INTO gyms (
  city, leader_id
) VALUES (
  'Viridian City', (
    SELECT id FROM leaders WHERE name LIKE 'Giovanni'
  )
);

-- Inserción de filas para "POKEMONS_ELEMENTS"
INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Geodude'),
  (SELECT id FROM elements WHERE name = 'rock')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Geodude'),
  (SELECT id FROM elements WHERE name = 'ground')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Onix'),
  (SELECT id FROM elements WHERE name = 'rock')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Onix'),
  (SELECT id FROM elements WHERE name = 'ground')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Staryu'),
  (SELECT id FROM elements WHERE name = 'water')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Starmie'),
  (SELECT id FROM elements WHERE name = 'water')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Starmie'),
  (SELECT id FROM elements WHERE name = 'psychic')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Raichu'),
  (SELECT id FROM elements WHERE name = 'electric')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Tangela'),
  (SELECT id FROM elements WHERE name = 'grass')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Weepinbell'),
  (SELECT id FROM elements WHERE name = 'grass')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Weepinbell'),
  (SELECT id FROM elements WHERE name = 'poison')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Gloom'),
  (SELECT id FROM elements WHERE name = 'grass')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Gloom'),
  (SELECT id FROM elements WHERE name = 'poison')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Venonat'),
  (SELECT id FROM elements WHERE name = 'bug')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Venonat'),
  (SELECT id FROM elements WHERE name = 'poison')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Venomoth'),
  (SELECT id FROM elements WHERE name = 'bug')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Venomoth'),
  (SELECT id FROM elements WHERE name = 'poison')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Abra'),
  (SELECT id FROM elements WHERE name = 'psychic')
); 

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Kadabra'),
  (SELECT id FROM elements WHERE name = 'psychic')
); 

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Alakazam'),
  (SELECT id FROM elements WHERE name = 'psychic')
); 

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Ninetales'),
  (SELECT id FROM elements WHERE name = 'fire')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Rapidash'),
  (SELECT id FROM elements WHERE name = 'fire')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Arcanine'),
  (SELECT id FROM elements WHERE name = 'fire')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Dugtrio'),
  (SELECT id FROM elements WHERE name = 'ground')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Persian'),
  (SELECT id FROM elements WHERE name = 'normal')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Nidoqueen'),
  (SELECT id FROM elements WHERE name = 'poison')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Nidoqueen'),
  (SELECT id FROM elements WHERE name = 'ground')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Nidoking'),
  (SELECT id FROM elements WHERE name = 'poison')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Nidoking'),
  (SELECT id FROM elements WHERE name = 'ground')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Rhydon'),
  (SELECT id FROM elements WHERE name = 'ground')
);

INSERT INTO pokemons_elements (
  pokemon_id, element_id
) VALUES (
  (SELECT id FROM pokemons WHERE name LIKE 'Rhydon'),
  (SELECT id FROM elements WHERE name = 'rock')
);

