USE codeup_test_db;

--Select Albums released after 1991
SELECT name, release_date from albums where release_date > 1991;

-- Select Albums with the genre 'disco'
SELECT name, genre from albums where genre = 'Disco';

--Select Albums by 'Whitney Houston' (...or maybe an artist of your choice)
select name, artist from albums where artist = 'Adele';

-------------Convert the SELECT statements to DELETE-----------.

-- Delete Albums released after 1991
DELETE from albums where release_date > 1991;

-- Delete Albums with the genre 'disco'
DELETE from albums where genre = 'Disco';

-- Delete Albums with the genre 'disco'
DELETE from albums where artist = 'Adele';