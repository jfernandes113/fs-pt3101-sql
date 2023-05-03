-- 3: Devuelve toda la información relativa al Nobel de Química.
SELECT * FROM nobels WHERE category = 'Chemistry';

-- 4: Devuelve el nombre completo del Nobel de Ciencias Económicas.
SELECT laureates.full_name AS economics_nobel FROM nobels 
INNER JOIN laureates ON nobels.laureate_id = laureates.id 
WHERE nobels.category = 'Economic Sciences';

-- 5: Devuelve la motivación y la categoría del Nobel de la Paz.
SELECT category, motivation FROM nobels WHERE category = 'Peace';

-- 6: Devuelve el nombre completo y el award_year de los Nobel dados en el año 2019.
SELECT laureates.fullname, nobels.award_year FROM nobels 
INNER JOIN laureates ON nobels.laureate_id = laureates.id 
WHERE nobels.award_year = 2019;

--  7: Devuelve la categoría y el award_year de los Nobel dados entre las fechas:
SELECT category, award_year
FROM nobels
WHERE date_awarded BETWEEN '2007-10-12' AND '2019-10-11';
--  8 Devuelve el nombre completo y award_year de los Nobel de Química ordenados desde el más antiguo al más reciente
SELECT laureates.fullname, nobels.award_year 
FROM nobels 
INNER JOIN laureates ON nobels.laureate_id = laureates.id 
WHERE nobels.category = 'Chemistry' 
ORDER BY nobels.award_year ASC;
-- 9 Devuelve la categoría, la motivación y el premio de los Nobel cuyo premio sea mayor de 500000$
SELECT category, motivation, prize_amount
FROM nobels 
WHERE prize_amount > 500000;
-- 10: Devuelve la categoría, y el award_year y el premio de los Nobel cuya categoría sea Física.
SELECT category, award_year, prize_amount 
FROM nobels 
WHERE category = 'Physics';

-- 11: Devuelve la categoría y el award_year de los Nobel cuyo premio esté comprendido entre 100000$ y 300000$.
SELECT category, award_year 
FROM nobels 
WHERE prize_amount BETWEEN 100000 AND 300000;

-- 12: Devuelve la suma de los premios Nobel de las categorías de Paz y Literatura.
SELECT SUM(prize_amount) 
FROM nobels 
WHERE category IN ('Peace', 'Literature');

-- 13: Devuelve las 5 afiliaciones y categorías de los Nobel cuyos premios sean los menores.
SELECT affiliations.name, nobels.category 
FROM nobels 
INNER JOIN affiliations ON nobels.laureate_id = affiliations.laureate_id 
ORDER BY prize_amount ASC 
LIMIT 5;

-- 14: Devuelve los 7 award_year más recientes en los que se ha entregado algún Nobel. Los años NO deben repetirse. Tienes que devolver 7 diferentes.
SELECT DISTINCT award_year 
FROM nobels 
ORDER BY award_year DESC 
LIMIT 7;

-- 15: Devuelve award_year, category_fullname y date_awarded de los Nobel cuyo campo date_awarded sea NULL.
SELECT nobels.award_year, categories.category_fullname, nobels.date_awarded 
FROM nobels 
INNER JOIN categories ON nobels.category = categories.category_shortname 
WHERE nobels.date_awarded IS NULL;

-- 16: Devuelve la suma de los premios de los Nobel cuyo campo date_awarded sea NULL
SELECT SUM(prize_amount) 
FROM nobels 
WHERE date_awarded IS NULL;
