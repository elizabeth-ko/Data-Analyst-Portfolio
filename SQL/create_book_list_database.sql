/** Favorite Books:
Breakfast at Tiffinay's
Stand Your Ground
Lincoln on Leadership
**/

CREATE TABLE Favorite_Books ( id INTEGER PRIMARY KEY, name TEXT, rating INTEGER );

INSERT INTO Favorite_Books VALUES (1, "Breakfast at Tiffinay's", 1);
INSERT INTO Favorite_Books VALUES (2, "Stand Your Ground", 3);
INSERT INTO Favorite_Books VALUES (3, "Lincoln On Leadership", 2);
SELECT * FROM Favorite_Books