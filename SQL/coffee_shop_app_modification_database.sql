 /* What does the app's SQL look like? */

CREATE TABLE coffee_shop (
    id integer PRIMARY KEY,
    user_id INTEGER,
    date TEXT,
    location TEXT,
    payment_method TEXT,
    total_price INTEGER,
    order_items TEXT,
    rating INTEGER
    );
    
INSERT INTO coffee_shop (user_id, date, location, payment_method, total_price, order_items, rating) VALUES (1, "10-03-2023", "Ormond Beach", "Visa", 8.08, "iced coffee, iced coffee", 5);
INSERT INTO coffee_shop (user_id, date, location, payment_method, total_price, order_items, rating) VALUES (2, "10-03-2023", "Ormond Beach", "Visa", 5.03, "bagel", 4);
INSERT INTO coffee_shop (user_id, date, location, payment_method, total_price, order_items, rating) VALUES (3, "10-02-2023", "Clearwater Beach", "Discover", 15.03, "iced coffee, donut, donut, hash browns", 5);
INSERT INTO coffee_shop (user_id, date, location, payment_method, total_price, order_items, rating) VALUES (4, "10-02-2023", "Daytona Beach", "Mastercard", 9.06, "hot coffee, biscuit, donut, donut", 2);
INSERT INTO coffee_shop (user_id, date, location, payment_method, total_price, order_items, rating) VALUES (1, "10-01-2023", "Ormond Beach", "Discover", 15.04, "iced coffee, hot coffee, bagel, donut, donut", 5);
INSERT INTO coffee_shop (user_id, date, location, payment_method, total_price, order_items, rating) VALUES (5, "10-01-2023", "Daytona Beach", "Discover", 4.03, "iced coffee", 1);

SELECT *  FROM coffee_shop;

SELECT location, AVG(rating) AS old_average_rating FROM coffee_shop GROUP BY location ORDER BY rating DESC;

UPDATE coffee_shop SET rating = 4  WHERE location = "Clearwater Beach";

SELECT location, rating FROM coffee_shop;

SELECT location, AVG(rating) AS new_average_rating FROM coffee_shop GROUP BY location ORDER BY rating DESC;

DELETE FROM coffee_shop WHERE user_id = 2;

SELECT location, rating FROM coffee_shop;

SELECT location, AVG(rating) AS newest_average_rating FROM coffee_shop Group BY location ORDER BY rating DESC;

SELECT location, order_items, date FROM coffee_shop WHERE date = "10-02-2023";

SELECT location, order_items, date FROM coffee_shop WHERE date = "10-02-2023" AND order_items LIKE "%hot coffee%"; 
