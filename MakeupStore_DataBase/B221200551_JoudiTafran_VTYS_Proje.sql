CREATE DATABASE Makeup_Store;
USE Makeup_Store;

-- Create Login table
CREATE TABLE Login_Table (
    UserName NCHAR(10) PRIMARY KEY,
    PassWord NCHAR(10) NOT NULL
);

-- Insert data into Categories table
INSERT INTO Login_Table (UserName, PassWord)
VALUES
    ('Joudi', 'J12345');


-- Create Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

-- Insert data into Categories table
INSERT INTO Categories (category_id, category_name)
VALUES
    (1, 'Facial Products'),
    (2, 'Lip Products'),
    (3, 'Eye Products'),
    (4, 'Palettes');

-- Create Subcategories table
CREATE TABLE Subcategories (
    subcategory_id INT PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Insert data into Subcategories table
INSERT INTO Subcategories (subcategory_id, subcategory_name, category_id)
VALUES
    (1, 'Cleansers', 1),
	(2, 'Foudations', 1),
	(3, 'Lipsticks', 2),
	(4, 'Lip Gloss' , 2),
    (5, 'Maskaras', 3),
	(6, 'Eyeliners', 3),
	(7, 'Eye Shadow Palette', 4),
	(8, 'conture palets', 4);

-- Create Brands table
CREATE TABLE Brands (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(255) NOT NULL
);

-- Insert data into Brands table
INSERT INTO Brands (brand_id, brand_name)
VALUES
    (1, 'Brand A'),
    (2, 'Brand B'),
    (3, 'Brand C'),
	(4, 'Brand D');

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    subcategory_id INT,
	brand_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id),
	FOREIGN KEY (brand_id) REFERENCES Brands (brand_id)
);

-- Insert data into Products table
INSERT INTO Products (product_id, product_name, subcategory_id, brand_id, price)
VALUES
    (1, 'Cleanser A', 1, 1, 15.99),
    (2, 'Cleanser B', 1, 2, 12.49),
    (3, 'Foundation A', 2, 1, 29.99),
    (4, 'Foundation B', 2, 2, 24.99),
    (5, 'Lipstick A', 3, 1, 9.99),
    (6, 'Lipstick B', 3, 2, 12.99),
    (7, 'Lip Gloss A', 4, 1, 8.99),
    (8, 'Lip Gloss B', 4, 2, 11.49),
    (9, 'Maskara A', 5, 1, 14.99),
    (10, 'Maskara B', 5, 2, 17.99),
    (11, 'Eyeliner A', 6, 1, 6.99),
    (12, 'Eyeliner B', 6, 2, 8.49),
    (13, 'Eye Shadow Palette A', 7, 1, 24.99),
    (14, 'Eye Shadow Palette B', 7, 2, 29.99),
    (15, 'Contour Palette A', 8, 1, 19.99),
	(16, 'Contour Palette B', 8, 2, 22.49);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
	age INT,
	Country VARCHAR(255),
	City VARCHAR(255),
	Postal_code INT
);

-- Insert data into Customers table
INSERT INTO Customers (customer_id, customer_name, email, age, Country, City, Postal_code)
VALUES
    (1, 'Alice Smith', 'alice@example.com', 30, 'USA', 'New York', 100019),
    (2, 'Bob Johnson', 'bob@example.com', 25, 'Canada', 'Toronto', 123450),
    (3, 'Charlie Brown', 'charlie@example.com', 35, 'UK', 'London', NULL),
    (4, 'David Lee', 'david@example.com', 40, 'Australia', 'Sydney', 200340),
    (5, 'Emma Davis', 'emma@example.com', 28, 'Germany', 'Berlin', 101150),
    (6, 'Frank White', 'frank@example.com', 33, 'France', 'Paris', 750014),
    (7, 'Grace Young', 'grace@example.com', 29, 'Japan', 'Tokyo', 100021),
    (8, 'Hannah Wilson', 'hannah@example.com', 31, 'Brazil', 'Rio de Janeiro', 207800),
    (9, 'Ian Martinez', 'ian@example.com', 27, 'Mexico', 'Mexico City', 060005),
    (10, 'Julia Garcia', 'julia@example.com', 36, 'Spain', 'Madrid', 280013),
    (11, 'Kevin Lopez', 'kevin@example.com', 26, 'South Africa', 'Johannesburg', 200045),
    (12, 'Linda Kim', 'linda@example.com', 32, 'South Korea', 'Seoul', 045190),
    (13, 'Michael Nguyen', 'michael@example.com', 38, 'Vietnam', 'Ho Chi Minh City', 700300),
    (14, 'Nancy Chen', 'nancy@example.com', 34, 'China', 'Beijing', 100400),
    (15, 'Ayşe Yılmaz', 'ayse@example.com', 33, 'Turkey', 'Istanbul', 340001),
    (16, 'Mustafa Kaya', 'mustafa@example.com', 29, 'Turkey', 'Ankara', 060008),
    (17, 'Fatma Demir', 'fatma@example.com', 27, 'Turkey', 'Izmir', 350007),
    (18, 'Mehmet Öztürk', 'mehmet@example.com', 35, 'Turkey', 'Bursa', 160004),
    (19, 'Şule Tekin', 'sule@example.com', 31, 'Turkey', 'Antalya', 070003),
    (20, 'Ali Can', 'ali@example.com', 28, 'Turkey', 'Adana', 010009);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
	customer_name VARCHAR(255),
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- Insert data into Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1, 1, '2024-05-10', 45.97),
    (2, 2, '2024-05-10', 42.98),
    (3, 3, '2024-05-09', 34.98),
    (4, 4, '2024-05-08', 23.98),
    (5, 5, '2024-05-08', 27.98),
    (6, 6, '2024-05-07', 18.98),
    (7, 7, '2024-05-07', 33.98),
    (8, 8, '2024-05-06', 21.98),
    (9, 9, '2024-05-06', 37.98),
    (10, 10, '2024-05-05', 31.98),
    (11, 11, '2024-05-04', 29.98),
    (12, 12, '2024-05-04', 41.98),
    (13, 13, '2024-05-03', 53.98),
    (14, 14, '2024-05-02', 19.98),
    (15, 15, '2024-05-02', 22.98),
    (16, 16, '2024-05-01', 25.98),
    (17, 17, '2024-05-01', 28.98),
    (18, 18, '2024-04-30', 36.98),
    (19, 19, '2024-04-30', 39.98),
    (20, 20, '2024-04-29', 47.98);

UPDATE o
SET o.customer_name = c.customer_name
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;


-- Create Order_Items table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
	product_id INT,
    product_name VARCHAR(255),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert data into Order_Items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity)
VALUES
    (1, 1, 1, 10),
    (2, 2, 3, 5),
    (3, 2, 15, 4),
    (4, 3, 7, 13),
    (5, 4, 6, 8),
    (6, 5, 9, 1),
    (7, 5, 12, 1),
    (8, 6, 10, 9),
    (9, 7, 14, 2),
    (10, 7, 5, 1),
    (11, 8, 4, 2),
    (12, 9, 8, 5),
    (13, 10, 2, 1),
    (14, 10, 16, 2),
    (15, 11, 1, 3),
    (16, 12, 3, 7),
    (17, 13, 7, 3),
    (18, 14, 9, 2),
    (19, 15, 11, 1),
    (20, 15, 4, 1),
    (21, 16, 13, 2),
    (22, 17, 8, 3),
    (23, 18, 2, 6),
    (24, 19, 5, 7),
    (25, 20, 6, 4);

UPDATE oi
SET oi.product_name = p.product_name
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id;

-- Create Product_Reviews table
CREATE TABLE Product_Reviews (
    review_id INT PRIMARY KEY,
	product_id INT,
    product_name VARCHAR(255),
	customer_id INT,
    customer_name VARCHAR(255),
    rating INT,
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Insert data into Product_Reviews table
INSERT INTO Product_Reviews (review_id, product_id, customer_id, rating, review_text, review_date)
VALUES
    (1, 1, 1, 4, 'Great cleanser, it really helped improve my skin texture.', '2024-05-10'),
    (2, 15, 2, 3, 'Decent cleanser, but didn''t see much difference in my skin.', '2024-05-09'),
    (3, 7, 3, 5, 'Amazing foundation! It blends so well and lasts all day.', '2024-05-08'),
    (4, 6, 4, 4, 'Good foundation, but the shade range could be improved.', '2024-05-07'),
    (5, 12, 5, 2, 'Didn''t like this lipstick, it dried out my lips.', '2024-05-06'),
    (6, 10, 6, 5, 'Love this lipstick! The color is beautiful and it''s very moisturizing.', '2024-05-05'),
    (7, 14, 7, 3, 'Average lip gloss, nothing special.', '2024-05-04'),
    (8, 4, 8, 4, 'Nice lip gloss, gives a subtle shine.', '2024-05-03'),
    (9, 8, 9, 5, 'Best maskara ever! Makes my lashes look so long and full.', '2024-05-02'),
    (10, 16, 10, 4, 'Good maskara, but tends to clump a bit.', '2024-05-01'),
    (11, 1, 11, 3, 'Not very impressed with this eyeliner, it smudges easily.', '2024-04-30'),
    (12, 3, 12, 5, 'Great eyeliner! Stays put all day and the color is intense.', '2024-04-29'),
    (13, 7, 13, 5, 'Love this eye shadow palette! The colors are so pigmented.', '2024-04-28'),
    (14, 9, 14, 4, 'Nice eye shadow palette, but some shades are a bit powdery.', '2024-04-27'),
    (15, 11, 15, 3, 'Decent contour palette, but the shades are a bit too warm for my skin tone.', '2024-04-26'),
    (16, 13, 16, 4, 'Good contour palette, blends easily and the shades are nice.', '2024-04-25'),
    (17, 8, 17, 5, 'This cleanser is a game changer! My skin has never looked better.', '2024-04-24'),
    (18, 2, 18, 3, 'Didn''t work well for me, didn''t see any improvement in my skin.', '2024-04-23'),
    (19, 5, 19, 4, 'Nice foundation, but a bit too matte for my liking.', '2024-04-22'),
    (20, 6, 20, 5, 'Absolutely love this foundation! It gives such a natural finish.', '2024-04-21');

-- Update product_name column
UPDATE pr
SET pr.product_name = p.product_name
FROM Product_Reviews pr
JOIN Products p ON pr.product_id = p.product_id;

-- Update customer_name column
UPDATE pr
SET pr.customer_name = c.customer_name
FROM Product_Reviews pr
JOIN Customers c ON pr.customer_id = c.customer_id;



-- Deleting data
SELECT * FROM Order_Items;

DELETE FROM Order_Items
WHERE order_item_id = 2;

SELECT * FROM Order_Items;



-- updating data
UPDATE Orders
SET total_amount = '90'
WHERE order_id = 4;

SELECT * FROM Orders;



--View 1
CREATE VIEW Turkish_Customers AS
SELECT *
FROM Customers
WHERE Country = 'Turkey';

SELECT * FROM Turkish_Customers;


--View 2
CREATE VIEW Turkish_Customers_Orders AS
SELECT 
    c.customer_name,
    c.City,
    p.product_name,
    b.brand_name,
    s.subcategory_name,
    oi.quantity
FROM 
    Customers c
JOIN 
    Orders o ON c.customer_id = o.customer_id
JOIN 
    Order_Items oi ON o.order_id = oi.order_id
JOIN 
    Products p ON oi.product_id = p.product_id
JOIN 
    Brands b ON p.brand_id = b.brand_id
JOIN 
    Subcategories s ON p.subcategory_id = s.subcategory_id
WHERE 
    c.Country = 'Turkey';

SELECT * FROM Turkish_Customers_Orders;



--Stored Procedure 1
Create procedure sp_ProductReviews
@rating int
as
begin
Select * from Product_Reviews where rating = @rating
end 

exec sp_ProductReviews 3
exec sp_ProductReviews 4
exec sp_ProductReviews 5


--Stored Procedure 2
CREATE PROCEDURE GetProductsByCategory
    @category_name VARCHAR(255)
AS
BEGIN
    SELECT 
        c.category_name,
        s.subcategory_name,
        p.product_name
    FROM 
        Categories c
    JOIN 
        Subcategories s ON c.category_id = s.category_id
    JOIN 
        Products p ON s.subcategory_id = p.subcategory_id
    WHERE 
        c.category_name = @category_name;
END;

EXEC GetProductsByCategory 'Facial Products';
EXEC GetProductsByCategory 'Lip Products';
EXEC GetProductsByCategory 'Eye Products';
EXEC GetProductsByCategory 'Palettes';



--Trigger 1
create trigger tr_NoChangeCategory
on Categories
for
insert, update, delete
as
print'you can not insert, update and delete this table'
rollback;

INSERT INTO Categories (category_id, category_name)
VALUES (5, 'Hair products');


--Trigger 2
CREATE TRIGGER tr_ExcessiveQuantity
ON Order_Items
AFTER INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE quantity > 50)
    BEGIN
        PRINT 'You cannot order more than 50 items of the same product';
        ROLLBACK TRANSACTION;
    END
END;

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity)
VALUES (26, 18, 8, 51);

