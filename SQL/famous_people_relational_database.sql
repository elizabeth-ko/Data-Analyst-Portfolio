/* Create table about the people and what they do here */

CREATE TABLE singers (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);

INSERT INTO singers (name) VALUES ("Mariah Carey");
INSERT INTO singers (name) VALUES ("Lady GaGa");
INSERT INTO singers (name) VALUES ("Taylor Swift");
INSERT INTO singers (name) VALUES ("Michael Jackson");
INSERT INTO singers (name) VALUES ("Selena Gomez");


CREATE TABLE songs (id INTEGER PRIMARY KEY AUTOINCREMENT, person_id INTEGER, song_title TEXT, year_released INTEGER);

INSERT INTO  songs (person_id, song_title, year_released) VALUES (1, "All I Want For Christmas Is You", 1994);
INSERT INTO  songs (person_id, song_title, year_released) VALUES (2, "Just Dance", 2008);
INSERT INTO  songs (person_id, song_title, year_released) VALUES (3, "Shake It Off", 2014);
INSERT INTO  songs (person_id, song_title, year_released) VALUES (4, "Smooth Criminal", 1988); 
INSERT INTO  songs (person_id, song_title, year_released) VALUES (5, "Who Says", 2011); 


CREATE TABLE about (id INTEGER PRIMARY KEY AUTOINCREMENT, person_id INTEGER, birth_place TEXT, birth_year INTEGER, birth_month TEXT, birth_day INTEGER, marital_status TEXT, age INTEGER);

INSERT INTO about (person_id, birth_place, birth_year, birth_month, birth_day, marital_status, age) VALUES (1, "New York", 1969, "March", 27, "Not Married", 54);
INSERT INTO about (person_id, birth_place, birth_year, birth_month, birth_day, marital_status, age) VALUES (2, "New York", 1986, "March", 28, "Not Married" ,37);
INSERT INTO about (person_id, birth_place, birth_year, birth_month, birth_day, marital_status, age) VALUES (3, "Pennsylvania", 1989, "December", 13, "Not Married", 33);
INSERT INTO about (person_id, birth_place, birth_year, birth_month, birth_day, marital_status, age) VALUES (4, "Indiana", 1958, "August", 29, "Not Married", 50);
INSERT INTO about (person_id, birth_place, birth_year, birth_month, birth_day, marital_status, age) VALUES (5, "Texas", 1992, "July", 22, "Not Married", 31); 


/* What songs did they write?  */
SELECT singers.name, songs.song_title FROM singers
JOIN songs
ON singers.id  = songs.person_id;

/* Where are they from? Are they married? How old are they from olest to youngest?*/
SELECT singers.name, about.birth_place, about.marital_status, about.age, about.birth_month, about.birth_day, about.birth_year FROM about
JOIN singers
ON singers.id = about.person_id
ORDER BY age DESC;
