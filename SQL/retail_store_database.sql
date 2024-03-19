CREATE TABLE Clothing_Inventory (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, price INTEGER, color TEXT);
INSERT INTO Clothing_Inventory VALUES (1, "Sweetheart Top", 130, 58, "pink");
INSERT INTO Clothing_Inventory VALUES (2, "V-neck Top", 98, 20, "white");
INSERT INTO Clothing_Inventory VALUES (3, "U-neck Top", 92, 20, "gray");
INSERT INTO Clothing_Inventory VALUES (4, "Crop Top", 156, 30, "blue");
INSERT INTO Clothing_Inventory VALUES (5, "Tank Top", 103, 20, "white");
INSERT INTO Clothing_Inventory VALUES (6, "Long Sleeve Top", 91, 40, "black");
INSERT INTO Clothing_Inventory VALUES (7, "Skinny Jeans", 100, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (8, "Flare Jeans", 150, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (9, "Boot Cut Jeans", 160, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (10, "Ripped Jeans", 90, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (11, "Low Rise Jeans", 106, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (12, "Low Rise Shorts", 90, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (13, "High Rise Shorts", 109, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (14, "Mom SHorts", 95, 50, "blue");
INSERT INTO Clothing_Inventory VALUES (15, "Curvy Shorts", 104, 50, "blue");

/** Query data by selecting everything and order results by price. **/
SELECT * FROM Clothing_Inventory ORDER BY price;

/** Aggregate data by finding the sum of inventory. **/
SELECT SUM(quantity) FROM Clothing_Inventory;

/** Aggregate data by finding the total profit of inventory. **/
SELECT SUM(quantity * price) AS total_profit FROM Clothing_Inventory;
