USE codeup_test_db;

SELECT 'All albums' AS 'Results';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;

SELECT 'Albums before 1980' AS 'Results';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT 'Albums by Michael Jackson' AS 'Results';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';