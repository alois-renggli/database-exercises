USE codeup_test_db;

-- In select_exercises.sql write queries to find the following information.
-- Before each item, output a caption explaining the results:
--
-- The name of all albums by Pink Floyd.
SELECT 'Table for all Pink Floyd albums:';
SELECT * FROM albums WHERE artist = 'Pink Floyd';
-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT 'Table for Sgt. Pepper''s release year:';
SELECT release_date, artist, name FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- The genre for Nevermind
SELECT 'Genre for Nevermind:';
SELECT genre FROM albums WHERE name = 'Nevermind';
-- Which albums were released in the 1990s
SELECT 'Albums from the 1990''s:';
SELECT * FROM albums WHERE release_date between 1990 AND 1999;
-- Which albums had less than 20 million certified sales
SELECT 'Albums with less than 20 million sales:';
SELECT * FROM albums WHERE sales < 20;
-- All the albums with a genre of "Rock". Why do these query results
SELECT 'Albums with genre of Rock:';
SELECT * FROM albums WHERE genre = 'rock';
-- not include albums with a genre of "Hard rock" or "Progressive rock"?
-- As always, commit your changes after each step and push them out to GitHub