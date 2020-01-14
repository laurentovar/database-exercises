USE codeup_test_db;

--Add SELECT statements after each UPDATE so you can see the results of your handiwork.


--All albums in your table.
select * from albums;

--All albums released before 1980
select * from albums WHERE release_date < 1980;

--All albums by Michael Jackson
select * from albums where artist = 'Michael Jackson';


--Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales * 10;
select * from albums;

--Move all the albums before 1980 back to the 1800s.
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
select * from albums WHERE release_date < 1980;

--Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums SET artist = 'Peter Jackson' where artist = 'Michael Jackson';

select * from albums where artist = 'Michael Jackson';