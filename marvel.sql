DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Gábor Budai');
INSERT INTO people (name) VALUES ('Abigaila Ekiert');
INSERT INTO people (name) VALUES ('Nuno Farinha');
INSERT INTO people (name) VALUES ('Ruben Franco Sanchez');
INSERT INTO people (name) VALUES ('Richard Haigh');
INSERT INTO people (name) VALUES ('Chika Kanu');
INSERT INTO people (name) VALUES ('Aaron McFaull');
INSERT INTO people (name) VALUES ('Craig Morton');
INSERT INTO people (name) VALUES ('John Polson');
INSERT INTO people (name) VALUES ('Kiran Qureshi');
INSERT INTO people (name) VALUES ('Ethan Radcliffe');
INSERT INTO people (name) VALUES ('Janapoles Ramos');
INSERT INTO people (name) VALUES ('Gordon Renfrew');
INSERT INTO people (name) VALUES ('Pauline Rudge');
INSERT INTO people (name) VALUES ('Martin Selis');
INSERT INTO people (name) VALUES ('Alex Shing');
INSERT INTO people (name) VALUES ('Anita Squires');
INSERT INTO people (name) VALUES ('Anthatony Starkes');
INSERT INTO people (name) VALUES ('Elisa Sveinsdottir');
INSERT INTO people (name) VALUES ('Hamish Whyte');
INSERT INTO people (name) VALUES ('Matthew Woodley');
INSERT INTO people (name) VALUES ('Emil Zacharczuk');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '15:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '12:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '14:00');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '21:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '17:10');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '19:45');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '12:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '19:05');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '21:55');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '14:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '13:05');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '19:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Infinity War', 2018, '18:50');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man and the Wasp', 2018, '19:55');


-- Return ALL the data in the 'movies' table.
SELECT * FROM movies;
-- -- Return ONLY the name column from the 'people' table
SELECT name FROM people;
-- -- Oops! Someone at CodeClan spelled Anthony's name wrong! Change it to reflect the proper spelling ('Anthatony Starkes' should be 'Anthony Starke').
UPDATE people SET name = 'Anthony Starke' WHERE name = 'Anthatony Starkes';
SELECT * FROM people;
-- -- Return ONLY your name from the 'people' table.
SELECT name FROM people WHERE name = 'Emil Zacharczuk'
-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;
-- Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people (name) VALUES ('Louise Camlin');
SELECT * FROM people;
-- Craig Morton has decided to hijack our movie evening, remove him from the table of people.
DELETE FROM people WHERE name = 'Craig Morton';
SELECT name FROM people;
-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Captain Marvel'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Captain Marvel', 2019, '00:00');
SELECT title FROM movies WHERE year = 2019;
-- The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
SELECT show_time FROM movies WHERE title = 'Guardians of the Galaxy';
UPDATE movies SET show_time = '14:55' WHERE title = 'Guardians of the Galaxy 2';
SELECT show_time FROM movies WHERE title = 'Guardians of the Galaxy 2';
-- Research how to delete multiple entries from your table in a single command.
DELETE FROM people WHERE name IN ('Gábor Budai','Emil Zacharczuk');
SELECT * from people;
DELETE FROM movies WHERE id IN (1,2,3,4,5);
SELECT * FROM movies;
DELETE FROM movies WHERE id IN (6, 10);
SELECT * FROM movies;
