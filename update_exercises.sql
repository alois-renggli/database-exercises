USE codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
--
-- All albums in your table.
SELECT 'All albums:';
SELECT * FROM albums;
-- All albums released before 1980
SELECT 'All albums before 1980:';
SELECT * FROM albums WHERE release_date < 1980;
-- All albums by Michael Jackson
SELECT 'All albums by Michael Jackson:';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
-- After each SELECT add an UPDATE statement to:
-- Make all the albums 10 times more popular (sales * 10)
SELECT 'All albums 10x more sold:';
UPDATE albums
SET sales =  sales * 10;
SELECT * FROM albums;
--

-- Move all the albums before 1980 back to the 1800s.
SELECT 'All albums before 1980 back to 1800''s';
UPDATE albums
SET release_date = release_date - 50
WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT 'All Michael Jackson changed to Peter Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.