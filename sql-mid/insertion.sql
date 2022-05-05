-- Users
INSERT INTO users (
  name, dni
) VALUES (
  'María', '123123Q'
) ON CONFLICT DO NOTHING;

INSERT INTO users (
  name, dni
) VALUES (
  'Luís', '321321H'
) ON CONFLICT DO NOTHING;

INSERT INTO users (
  name, dni
) VALUES (
  'Cecilia', '5454545J'
) ON CONFLICT DO NOTHING;

INSERT INTO users (
  name, dni
) VALUES (
  'Antonio', '232323L'
) ON CONFLICT DO NOTHING;

INSERT INTO users (
  name, dni
) VALUES (
  'Andreé', '333222U'
) ON CONFLICT DO NOTHING;

-- Libraries
INSERT INTO libraries (
  center, city, address, identifier, director_id
) VALUES (
  'Biblioteca municipal', 'Madrid', 'Calle qué tal, 3', 'A22',
  (SELECT id FROM users WHERE dni = '123123Q')
) ON CONFLICT DO NOTHING;

INSERT INTO libraries (
  center, city, address, identifier, director_id
) VALUES (
  'Biblioteca central', 'Madrid', 'Calle Juana la del Pipa, 12', 'B14',
  (SELECT id FROM users WHERE dni = '5454545J')
) ON CONFLICT DO NOTHING;

-- Books
INSERT INTO books (
  name, author, isbn, rented_id
) VALUES (
  'El nombre del viento Vol.1', 'Patrick Rothfuss', '123-B',
  (SELECT id FROM users WHERE dni = '232323L')
) ON CONFLICT DO NOTHING;

INSERT INTO books (
  name, author, isbn, rented_id
) VALUES (
  'El nombre del viento Vol.2', 'Patrick Rothfuss', '124-B', 
  (SELECT id FROM users WHERE dni = '232323L')
) ON CONFLICT DO NOTHING;

INSERT INTO books (
  name, author, isbn, rented_id
) VALUES (
  'El nombre del viento Vol.3', 'Patrick Rothfuss', '125-B',
  (SELECT id FROM users WHERE dni = '321321H')
) ON CONFLICT DO NOTHING;

INSERT INTO books (
  name, author, isbn, rented_id
) VALUES (
  'Memorias de Idhún Vol.1', 'Laura Gallego', '432-H', 
  (SELECT id FROM users WHERE dni = '5454545J')
) ON CONFLICT DO NOTHING;

INSERT INTO books (
  name, author, isbn, rented_id
) VALUES (
  'Memorias de Idhún Vol.2', 'Laura Gallego', '433-H', 
  (SELECT id FROM users WHERE dni = '333222U')
) ON CONFLICT DO NOTHING;

INSERT INTO books (
  name, author, isbn, rented_id
) VALUES (
  'Memorias de Idhún Vol.3', 'Laura Gallego', '434-H',
  (SELECT id FROM users WHERE dni = '123123Q')
) ON CONFLICT DO NOTHING;

-- Users-Libraries
INSERT INTO users_libraries (
  member_id, library_id
) VALUES (
  (SELECT id FROM users WHERE dni = '232323L'),
  (SELECT id FROM libraries WHERE identifier = 'A22')
) ON CONFLICT DO NOTHING;

INSERT INTO users_libraries (
  member_id, library_id
) VALUES (
  (SELECT id FROM users WHERE dni = '5454545J'),
  (SELECT id FROM libraries WHERE identifier = 'A22')
) ON CONFLICT DO NOTHING;

INSERT INTO users_libraries (
  member_id, library_id
) VALUES (
  (SELECT id FROM users WHERE dni = '232323L'),
  (SELECT id FROM libraries WHERE identifier = 'B14')
) ON CONFLICT DO NOTHING;

INSERT INTO users_libraries (
  member_id, library_id
) VALUES (
  (SELECT id FROM users WHERE dni = '123123Q'),
  (SELECT id FROM libraries WHERE identifier = 'A22')
) ON CONFLICT DO NOTHING;

INSERT INTO users_libraries (
  member_id, library_id
) VALUES (
  (SELECT id FROM users WHERE dni = '321321H'),
  (SELECT id FROM libraries WHERE identifier = 'B14')
) ON CONFLICT DO NOTHING;