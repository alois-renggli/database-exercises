USE codeup_test_db;


-- Create a new file named albums_seeder.sql.
--
-- At the top of albums_seeder.sql be sure to USE the codeup_test_db database.
--
-- Use INSERT to add records for all the albums from this list on Wikipedia that claim over
-- 30 million sales (the first two tables). For sales data, use the 'sales certification' column
-- of the tables, not 'claimed sales'. For artists listed with 'Various Artists', just use the
-- primary artist's name.

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson',	'Thriller',	1982,	'Pop', 47.3);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Eagles',	'Their Greatest Hits (1971–1975)',	1976,	'Country rock', 41.2);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('AC/DC',	'Back in Black',	1980,	'Hard rock', 26.13);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Pink Floyd',	'The Dark Side of the Moon',	1973,	'Progressive rock',	24.23);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Meat Loaf',	'Bat Out of Hell',	1977,	'Hard rock', 21.5);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Whitney Houston', 'The Bodyguard',	1992,	'R&B', 28.4);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Eagles',	'Hotel California',	1976,	'Soft rock', 31.5);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Bee Gees', 'Saturday Night Fever',	1977,	'Disco', 21.62);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Fleetwood Mac', 'Rumours',	1977,	'Soft rock', 27.9);




INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Various artists',	'Grease: The Original Soundtrack from the Motion Picture',	1978,	'Soundtrack',	14.4);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Led Zeppelin',	'Led Zeppelin IV',	1971,	'Hard rock', 29.0);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson',	'Bad',	1987,	'Pop', 19.3);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Alanis Morissette',	'Jagged Little Pill',	1995,	'Alternative rock',	24.4);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Shania Twain',	'Come On Over',	1997,	'Country', 29.6);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Celine Dion',	'Falling into You',	1996,	'Pop', 20.2);



INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('The Beatles',	'Sgt. Pepper''s Lonely Hearts Club Band',	1967,	'Rock',	18.2);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Various artists',	'Dirty Dancing',	1987,	'Pop', 17.9);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Michael Jackson',	'Dangerous',	1991,	'Rock', 17.3);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Adele',	'21',	2011,	'Pop', 25.3);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Celine Dion',	'Let''s Talk About Love',	1997,	'Pop', 19.3);


INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('The Beatles',	'1',	2000,	'Rock',	23.4);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('ABBA',	'Gold: Greatest Hits',	1992,	'Pop', 22.7);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Madonna',	'The Immaculate Collection',	1990,	'Pop', 19.4);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('The Beatles',	'Abbey Road',	1969,	'Rock',	14.4);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Bruce Springsteen',	'Born in the U.S.A.',	1984,	'Heartland rock',	19.6);


INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Dire Straits',	'Brothers in Arms',	1985,	'Roots rock', 17.7);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('James Horner',	'Titanic: Music from the Motion Picture',	1997,	'Soundtrack',	18.1);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Metallica',	'Metallica',	1991,	'Heavy metal', 21.2);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Nirvana',	'Nevermind',	1991,	'Grunge', 16.7);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Pink Floyd',	'The Wall',	1979,	'Progressive rock',	18.6);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Santana',	'Supernatural',	1999,	'Latin rock',	20.5);

INSERT INTO albums (artist, name, release_date, genre, sales)
VALUES ('Guns N'' Roses',	'Appetite for Destruction',	1987,	'Hard rock', 21.6);
--
-- First write your queries as separate INSERT statements for each record and test. You should see
-- no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again.
-- Again, this should not generate any output.
-- Note that running the albums_seeder.sql multiple times will generate duplicate data, don't ||

--
-- First write your queries as separate INSERT statements for each record and test. You should see
-- no output.
-- Refactor your script to use a single INSERT statement for all the records and test it again.
-- Again, this should not generate any output.
-- Note that running the albums_seeder.sql multiple times will generate duplicate data, don't
-- worry about that for now (we'll fix it by the end of the exercise).