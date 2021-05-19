USE codeup_test_db;

SELECT 'Albums by Pink Floyd' AS 'Results';
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Sgt. Peppers release year' AS 'Results';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre of Nevermind' AS 'Results';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums from the 90s' AS 'Results';
SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums with less than 20 million sales' AS 'Results';
SELECT * FROM albums WHERE sales < 20;

SELECT 'Rock albums' AS 'Results';
SELECT * FROM albums WHERE genre = 'Rock';
