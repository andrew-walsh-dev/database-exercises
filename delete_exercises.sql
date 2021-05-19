USE codeup_test_db;

SELECT 'Albums after 1991' AS 'Results';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Disco albums' AS 'Results';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'Whitney Houston albums' AS 'Results';
DELETE FROM albums WHERE  artist = 'The Beatles';