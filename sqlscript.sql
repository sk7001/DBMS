REM   Script: E COMMERCE
REM   made about maintaininng database about e commerce

CREATE TABLE users ( 
    USER_ID INT PRIMARY KEY, 
    USER_NAME VARCHAR(255), 
    PH_NO VARCHAR(15), 
    EMAIL VARCHAR(255), 
    USER_ADD VARCHAR(255), 
    USER_CITY VARCHAR(255), 
    USER_STATE VARCHAR(255), 
    USER_COUNTRY VARCHAR(255), 
    USER_PINCODE VARCHAR(10) 
);

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(1, 'SRINIVAS SOBHIT KINTALI', '7978727499', 'ksrinivassobhit03@gmail.com', 'College Road', 'Rayagada', 'Odisha', 'India', '765001'), 
(2, 'KARTHIK', '7875749245', 'avitaresidence@gmail.com', 'Adiparashakti Road', 'Chennai', 'Tamil Nadu', 'India', '603203'), 
(3, 'NIKHIL LINGAMPALLI', '9246659570', 'nikhillingampalli@gmail.com', 'GVMC Road', 'Visakhapatnam', 'Andhra Pradesh', 'India', '765001'), 
(4, 'Lalith Peddinti', '9456012375', 'lalithpeddinti@gmail.com', '7 Road Junction', 'Srikakulam', 'Andhra Pradesh', 'India', NULL), 
(5, 'UMESH KARI', '7895461230', 'umesh@gmail.com', 'NEW COLONY', 'RAYAGADA', 'ODISHA', 'INDIA', '765001');

CREATE TABLE categories ( 
    CAT_ID INT PRIMARY KEY, 
    CAT_NAME VARCHAR(255) 
);

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(1, 'CLOTHES'), 
(2, 'ELECTRONICS'), 
(3, 'COSMETICS'), 
(4, 'GROCERIES'), 
(5, 'FURNITURE'), 
(6, 'FITNESS'), 
(7, 'PHARMACY');

CREATE TABLE products ( 
    PROD_ID INT PRIMARY KEY, 
    PROD_NAME VARCHAR(255), 
    CAT_ID INT, 
    PROD_PRICE DECIMAL(10, 2), 
    SUPP_ID INT, 
    FOREIGN KEY (CAT_ID) REFERENCES categories(CAT_ID), 
    FOREIGN KEY (SUPP_ID) REFERENCES suppliers(SUPP_ID) 
);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(2, 'Wireless Headphones', 2, 1999.00, 2), 
(3, 'Matte Lipstick', 3, 349.00, 3), 
(4, 'Basmati Rice (5kg)', 4, 499.00, 4), 
(5, 'Wooden Dining Table Set', 5, 8999.00, 5), 
(6, 'Yoga Mat', 6, 599.00, 6), 
(7, 'Pain Relief Gel', 7, 149.00, 7), 
(1, 'Men''s Polo T-shirt', 1, 699.00, 1);

CREATE TABLE suppliers ( 
    SUPP_ID INT PRIMARY KEY, 
    SUPP_NAME VARCHAR(255), 
    SUPP_ADD VARCHAR(255) 
);

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(1, 'Fashion Emporium India', '123 Fashion Street, Mumbai, Maharashtra 400001'), 
(2, 'TechHub Pvt. Ltd.', '456 Tech Park, Bangalore, Karnataka 560001'), 
(3, 'Beauty Haven Cosmetics', '789 Beauty Avenue, Delhi, Delhi 110001'), 
(4, 'Green Groceries Pvt. Ltd.', '101 Green Market, Kolkata, West Bengal 700001'), 
(5, 'Furniture Palace', '202 Furniture Road, Chennai, Tamil Nadu 600001'), 
(6, 'Fitness World Enterprises', '123 Fitness Street, Pune, Maharashtra 411001'), 
(7, 'HealthPlus Pharmacy', '456 Medical Avenue, Hyderabad, Telangana 500001');

CREATE TABLE cart ( 
    CART_ID INT PRIMARY KEY, 
    PROD_ID INT, 
    QUANTITY INT, 
    TOTAL_AMT DECIMAL(10, 2), 
    USER_ID INT, 
    FOREIGN KEY (PROD_ID) REFERENCES products(PROD_ID), 
    FOREIGN KEY (USER_ID) REFERENCES users(USER_ID) 
);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(1, 1, 2, 1398.00, 1), 
(2, 2, 1, 1999.00, 4), 
(3, 3, 3, 1047.00, 5), 
(4, 4, 5, 2495.00, 4), 
(5, 5, 1, 8999.00, 1), 
(6, 6, 2, 1198.00, 5), 
(7, 7, 4, 596.00, 3);

CREATE TABLE invoice ( 
    INVOICE_ID INT PRIMARY KEY, 
    DOI DATE, 
    CART_ID INT, 
    PAYMENT_MODE VARCHAR(50), 
    USER_ID INT, 
    FOREIGN KEY (CART_ID) REFERENCES cart(CART_ID), 
    FOREIGN KEY (USER_ID) REFERENCES users(USER_ID) 
);

INSERT INTO invoice (IN 
;

select *form users;

delete table users;

CREATE TABLE users ( 
    USER_ID INT PRIMARY KEY, 
    USER_NAME VARCHAR(255), 
    PH_NO VARCHAR(15), 
    EMAIL VARCHAR(255), 
    USER_ADD VARCHAR(255), 
    USER_CITY VARCHAR(255), 
    USER_STATE VARCHAR(255), 
    USER_COUNTRY VARCHAR(255), 
    USER_PINCODE VARCHAR(10) 
);

desc users


INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(1, 'SRINIVAS SOBHIT KINTALI', '7978727499', 'ksrinivassobhit03@gmail.com', 'College Road', 'Rayagada', 'Odisha', 'India', '765001'), 
(2, 'KARTHIK', '7875749245', 'avitaresidence@gmail.com', 'Adiparashakti Road', 'Chennai', 'Tamil Nadu', 'India', '603203'), 
(3, 'NIKHIL LINGAMPALLI', '9246659570', 'nikhillingampalli@gmail.com', 'GVMC Road', 'Visakhapatnam', 'Andhra Pradesh', 'India', '765001'), 
(4, 'Lalith Peddinti', '9456012375', 'lalithpeddinti@gmail.com', '7 Road Junction', 'Srikakulam', 'Andhra Pradesh', 'India', NULL), 
(5, 'UMESH KARI', '7895461230', 'umesh@gmail.com', 'NEW COLONY', 'RAYAGADA', 'ODISHA', 'INDIA', '765001');

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
((1, 'SRINIVAS SOBHIT KINTALI', '7978727499', 'ksrinivassobhit03@gmail.com', 'College Road', 'Rayagada', 'Odisha', 'India', '765001'), 
(2, 'KARTHIK', '7875749245', 'avitaresidence@gmail.com', 'Adiparashakti Road', 'Chennai', 'Tamil Nadu', 'India', '603203'), 
(3, 'NIKHIL LINGAMPALLI', '9246659570', 'nikhillingampalli@gmail.com', 'GVMC Road', 'Visakhapatnam', 'Andhra Pradesh', 'India', '765001'), 
(4, 'Lalith Peddinti', '9456012375', 'lalithpeddinti@gmail.com', '7 Road Junction', 'Srikakulam', 'Andhra Pradesh', 'India', NULL), 
(5, 'UMESH KARI', '7895461230', 'umesh@gmail.com', 'NEW COLONY', 'RAYAGADA', 'ODISHA', 'INDIA', '765001'));

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(1, 'SRINIVAS SOBHIT KINTALI', '7978727499', 'ksrinivassobhit03@gmail.com', 'College Road', 'Rayagada', 'Odisha', 'India', '765001');

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(2, 'KARTHIK', '7875749245', 'avitaresidence@gmail.com', 'Adiparashakti Road', 'Chennai', 'Tamil Nadu', 'India', '603203');

select *from users;

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(3, 'NIKHIL LINGAMPALLI', '9246659570', 'nikhillingampalli@gmail.com', 'GVMC Road', 'Visakhapatnam', 'Andhra Pradesh', 'India', '765001');

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(4, 'Lalith Peddinti', '9456012375', 'lalithpeddinti@gmail.com', '7 Road Junction', 'Srikakulam', 'Andhra Pradesh', 'India', NULL);

INSERT INTO users (USER_ID, USER_NAME, PH_NO, EMAIL, USER_ADD, USER_CITY, USER_STATE, USER_COUNTRY, USER_PINCODE) VALUES 
(5, 'UMESH KARI', '7895461230', 'umesh@gmail.com', 'NEW COLONY', 'RAYAGADA', 'ODISHA', 'INDIA', '765001');

select *from users;

CREATE TABLE categories ( 
    CAT_ID INT PRIMARY KEY, 
    CAT_NAME VARCHAR(255) 
);

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(1, 'CLOTHES');

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES ;

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(2, 'ELECTRONICS');

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(3, 'COSMETICS'), ;

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(3, 'COSMETICS') ;

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(3, 'COSMETICS'), ;

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(4, 'GROCERIES');

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(5, 'FURNITURE');

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(6, 'FITNESS');

INSERT INTO categories (CAT_ID, CAT_NAME) VALUES 
(7, 'PHARMACY');

select*from categories;

CREATE TABLE products ( 
    PROD_ID INT PRIMARY KEY, 
    PROD_NAME VARCHAR(255), 
    CAT_ID INT, 
    PROD_PRICE DECIMAL(10, 2), 
    SUPP_ID INT, 
    FOREIGN KEY (CAT_ID) REFERENCES categories(CAT_ID), 
    FOREIGN KEY (SUPP_ID) REFERENCES suppliers(SUPP_ID) 
);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(2, 'Wireless Headphones', 2, 1999.00, 2);

CREATE TABLE products ( 
    PROD_ID INT PRIMARY KEY, 
    PROD_NAME VARCHAR(255), 
    CAT_ID INT, 
    PROD_PRICE DECIMAL(10, 2), 
    SUPP_ID INT, 
    FOREIGN KEY (CAT_ID) REFERENCES categories(CAT_ID), 
    FOREIGN KEY (SUPP_ID) REFERENCES suppliers(SUPP_ID) 
);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(2, 'Wireless Headphones', 2, 1999.00, 2);

select * from products;

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(1, 'Men''s Polo T-shirt', 1, 699.00, 1);

CREATE TABLE suppliers ( 
    SUPP_ID INT PRIMARY KEY, 
    SUPP_NAME VARCHAR(255), 
    SUPP_ADD VARCHAR(255) 
);

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(1, 'Fashion Emporium India', '123 Fashion Street, Mumbai, Maharashtra 400001');

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(2, 'TechHub Pvt. Ltd.', '456 Tech Park, Bangalore, Karnataka 560001');

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(3, 'Beauty Haven Cosmetics', '789 Beauty Avenue, Delhi, Delhi 110001');

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(4, 'Green Groceries Pvt. Ltd.', '101 Green Market, Kolkata, West Bengal 700001');

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(5, 'Furniture Palace', '202 Furniture Road, Chennai, Tamil Nadu 600001');

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(6, 'Fitness World Enterprises', '123 Fitness Street, Pune, Maharashtra 411001');

select*from suppliers;

INSERT INTO suppliers (SUPP_ID, SUPP_NAME, SUPP_ADD) VALUES 
(7, 'HealthPlus Pharmacy', '456 Medical Avenue, Hyderabad, Telangana 500001');

select *from suppliers;

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(2, 'Wireless Headphones', 2, 1999.00, 2) ;

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(3, 'Matte Lipstick', 3, 349.00, 3);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(4, 'Basmati Rice (5kg)', 4, 499.00, 4);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(5, 'Wooden Dining Table Set', 5, 8999.00, 5);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(6, 'Yoga Mat', 6, 599.00, 6);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(7, 'Pain Relief Gel', 7, 149.00, 7);

INSERT INTO products (PROD_ID, PROD_NAME, CAT_ID, PROD_PRICE, SUPP_ID) VALUES 
(1, 'Men''s Polo T-shirt', 1, 699.00, 1);

select *from products;

CREATE TABLE cart ( 
    CART_ID INT PRIMARY KEY, 
    PROD_ID INT, 
    QUANTITY INT, 
    TOTAL_AMT DECIMAL(10, 2), 
    USER_ID INT, 
    FOREIGN KEY (PROD_ID) REFERENCES products(PROD_ID), 
    FOREIGN KEY (USER_ID) REFERENCES users(USER_ID) 
);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(1, 1, 2, 1398.00, 1);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(2, 2, 1, 1999.00, 4);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(3, 3, 3, 1047.00, 5);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(4, 4, 5, 2495.00, 4);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(5, 5, 1, 8999.00, 1);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(6, 6, 2, 1198.00, 5);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) VALUES 
(7, 7, 4, 596.00, 3);

select * from cart;

select * from cart ORDER BY (USER_ID);

truncate table cart


select * from cart;

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) 
VALUES (1, 7, 1, 149, 4);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) 
VALUES (2, 5, 1, 8999, 2);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) 
VALUES (3, 1, 1, 699, 5);

select *from cart;

select *from cart;

update cart set prod_id=2 where cart_id=1;

select *from cart;

select * from invoice;

CREATE TABLE invoice ( 
    INVOICE_ID INT PRIMARY KEY, 
    DOI DATE, 
    CART_ID INT, 
    PAYMENT_MODE VARCHAR(50), 
    USER_ID INT, 
    FOREIGN KEY (CART_ID) REFERENCES cart(CART_ID), 
    FOREIGN KEY (USER_ID) REFERENCES users(USER_ID) 
);

desc invoice


select  * from cart ;

select  * from products;

select  * from users;

select * from cart;

select * from invoice;

desc invoice


desc cart


alter table invoice drop column user_id;

desc invoice


select * from invoice;

select *  from cart;

select *  from cart;

select * from products;

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
(4, 2, 3, 5997, 3);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) 
(4, 2, 3, 5997, 3);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
(5, 3, 2, 698, 1);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
(6, 4, 4, 1996, 2);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
(7, 5, 1, 8999, 1);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
(8, 6, 2, 1198, 5);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
(9, 7, 3, 447, 3);

INSERT INTO cart (CART_ID, PROD_ID, QUANTITY, TOTAL_AMT, USER_ID) values 
 (10, 1, 2, 1398, 4);

select * from cart;

select * from cart order by (cart_id);

select * from cart order by (user_id);

select * from cart order by (total_amt);

select * from cart order by (user_id);

select * from cart order by (user_id);

select * from products;

select * from cart order by (user_id);

select * from invoice;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (2, '21-MAR-24', 4, 'Credit Card');

select * from invoice;

truncate table invoice


select * from invoice;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) 
VALUES (1, TO_DATE('20-MAR-24'), 3, 'Debit Card', 5);

select * from invoice;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) 
VALUES (1, TO_DATE('20-MAR-24', 'DD-MON-RR'), 3, 'Debit Card', 5);

select * from invoice;

DESC INVOICE 


INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) 
VALUES (1, TO_DATE('20-MAR-24', 'DD-MON-YY'), 3, 'Debit Card', 5);

select * from invoice;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) 
VALUES (1, TO_DATE('20-MAR-24', 'DD-MON-YY'), 3, 'Debit Card', 5);

select * from invoice;

DESC INVOICE


INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) 
VALUES (1, TO_DATE('20-MAR-24', 'DD-MON-YY'), 3, 'Debit Card', 5);

select * from invoice;

DESC INVOICE


INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (1, TO_DATE('20-MAR-24', 'DD-MON-YY'), 3, 'Debit Card');

select * from invoice;

DESC INVOICE


INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (2, '21-MAR-24', 4, 'Credit Card');

select * from invoice;

DESC INVOICE


INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (3, '21-MAR-24', 7, 'Cash');

select * from invoice;

DESC INVOICE


INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (4, '21-MAR-24', 1, 'Debit Card');

select * from invoice;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (4, '21-MAR-24', 1, 'Debit Card');

select * from invoice;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (4, '21-MAR-24', 1, 'Debit Card');

select * from invoice ORDER BY (INVOICE_ID);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (5, '21-MAR-24', 7, 'UPI');

select * from invoice ORDER BY (INVOICE_ID);

DELETE FROM INVOICE WHERE INVOICE_ID=5;

select * from invoice ORDER BY (INVOICE_ID);

ALTER TABLE INVOICE MODIFY USER_ID INT PRIMARY KEY;

select * from invoice ORDER BY (INVOICE_ID);

ALTER TABLE INVOICE MODIFY CART_ID INT PRIMARY KEY;

select * from invoice ORDER BY (INVOICE_ID);

ALTER TABLE INVOICE MODIFY CART_ID INT UNIQUE;

select * from invoice ORDER BY (INVOICE_ID);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (5, '21-MAR-24', 7, 'UPI');

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (5, '21-MAR-24', 7, 'UPI');

select * from invoice ORDER BY (INVOICE_ID);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (5, '21-MAR-24', 7, 'UPI');

select * from invoice ORDER BY (INVOICE_ID);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (5, '21-MAR-24', 7, 'UPI');

select * from invoice ORDER BY (INVOICE_ID);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) 
VALUES (5, '21-MAR-24', 10, 'UPI');

select * from invoice ORDER BY (INVOICE_ID);

SELECT * FROM INVOICE;

SELECT * FROM INVOICE ORDER BY (`INVOICE_ID`);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID);

SELECT * FROM CART ORDER BY(CART_ID);

SELECT * FROM CART ORDER BY(CART_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

select* from users order by (user_id);

select* from users order by (user_id);

select* from users;

select* from users order by (user_id);

select* from categories order by (cat_id);

select* from products order by (prod_id);

select* from suppliers order by (supp_id);

select* from cart order by (cart_id);

select* from invoice order by (invoice_id);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) VALUES 
(1, TO_DATE('20-MAR-24', 'DD-MON-RR'), 5, 'Cash', 1),;

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE, USER_ID) VALUES 
(1, TO_DATE('20-MAR-24', 'DD-MON-RR'), 5, 'Cash', 1);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) VALUES 
(1, TO_DATE('20-MAR-24', 'DD-MON-RR'), 5, 'Cash');

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) VALUES 
(6, TO_DATE('20-MAR-24', 'DD-MON-RR'), 5, 'Cash');

select* from invoice order by (invoice_id);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) VALUES 
(6, TO_DATE('20-MAR-24', 'DD-MON-yy'), 5, 'Cash');

select* from invoice order by (invoice_id);

select* from invoice order by (invoice_id);

INSERT INTO invoice (INVOICE_ID, DOI, CART_ID, PAYMENT_MODE) VALUES 
(7, TO_DATE('20-MAR-24', 'DD-MON-yy'), 2, 'Cash');

select* from invoice order by (invoice_id);

SELECT  
    p.cat_name AS CATEGORY, 
    (SELECT SUM(quantity) FROM cart WHERE prod_id IN  
        (SELECT prod_id FROM products WHERE cat_id = p.cat_id)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID order by (cat_id)) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID order by (cat_id)) order by (cat_id)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID order by (cat_id)) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID) order by (cat_id)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID order by (cat_id)) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID) order by (cat_id)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID order by (cat_id)) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID);

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID) FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID) FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID FROM products p;

SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID FROM products p;

SELECT CAT_NAME FROM categories, products p WHERE CAT_ID = p.CAT_ID;

SELECT CAT_NAME FROM categories, products p WHERE CAT_ID = p.CAT_ID;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories), 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products p WHERE CAT_ID = p.CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products p WHERE CAT_ID = p.CAT_ID) as TOTAL_SOLD;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products p WHERE CAT_ID = p.CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products p WHERE CAT_ID = p.CAT_ID) AS TOTAL_SOLD;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products p WHERE CAT_ID = p.CAT_ID);

SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products p WHERE CAT_ID = p.CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CART_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM INVOICE WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

cart


SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY (CAT_ID);

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    GROUP BY USER_ID  
    HAVING COUNT(PROD_ID) > 1 
);

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    GROUP BY USER_ID  
    HAVING COUNT(PROD_ID) > 2 
);

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    GROUP BY USER_ID  
    HAVING COUNT(PROD_ID) > 1 
);

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM = 1 
);

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
);

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM >0 
);

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM =2 
);

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM =1 
);

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM =1 
);

SELECT * FROM CART;

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM =1 
);

SELECT * FROM CART;

SELECT * FROM USERS;

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM =0 
);

SELECT * FROM CART;

SELECT * FROM USERS;

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM = 5 
);

SELECT * FROM CART;

SELECT * FROM USERS;

SELECT * 
FROM users 
WHERE USER_ID = ( 
    SELECT USER_ID 
    FROM ( 
        SELECT USER_ID, SUM(TOTAL_AMT) AS TOTAL_SPENT 
        FROM cart 
        GROUP BY USER_ID 
        ORDER BY TOTAL_SPENT DESC 
    ) 
    WHERE ROWNUM = 1 
);

SELECT * FROM CART;

SELECT * FROM USERS;

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'Debit Card');

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'UPI');

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'CASH');

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'CREDIT CARD');

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'CREDIT CARD');

SELECT * FROM INVOICE;

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'CREDIT CARD');

SELECT * FROM CART;

SELECT * FROM users WHERE USER_ID IN (SELECT USER_ID FROM invoice WHERE PAYMENT_MODE = 'CREDIT CARD');

SELECT * FROM INVOICE;

SELECT * FROM USRES WHERE USER_ID IN (SELECT USER_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI');

SELECT * FROM INVOICE;

SELECT * FROM USRES WHERE USER_ID IN (SELECT USER_ID FROM CART IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM INVOICE;

SELECT * FROM USRES WHERE USER_ID IN (SELECT USER_ID FROM CART IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT * FROM USRES WHERE USER_ID IN (SELECT USER_ID FROM CART IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT * FROM USRES WHERE USER_ID IN (SELECT USER_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT * FROM USERS WHERE USER_ID IN (SELECT USER_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_SOLD 
FROM products p ORDER BY(CAT_ID);

SELECT * FROM USER	S WHERE USER_ID IN (SELECT USER_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT * FROM USER	S WHERE USER_ID IN (SELECT USER_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT * FROM USERS WHERE USER_ID IN (SELECT USER_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE PAYMENT_MODE = 'UPI'));

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT  
    (SELECT SUPP_NAME FROM suppliers WHERE SUPP_ID = p.SUPP_ID) AS SUPPLIER_NAME, 
    (SELECT SUM(QUANTITY) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE SUPP_ID = p.SUPP_ID)) AS TOTAL_SOLD 
FROM products p;

SELECT  
    (SELECT SUPP_NAME FROM suppliers WHERE SUPP_ID = p.SUPP_ID) AS SUPPLIER_NAME, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE SUPP_ID = p.SUPP_ID)) AS TOTAL_REVENUE 
FROM products p;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE PROD_ID IN ( 
        SELECT PROD_ID  
        FROM products  
        WHERE CAT_ID = 2 
    ) 
);

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE PROD_ID IN ( 
        SELECT PROD_ID  
        FROM products  
        WHERE CAT_ID = 2 
    ) 
);

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE PROD_ID IN ( 
        SELECT PROD_ID  
        FROM products  
        WHERE CAT_ID = 2 
    ) 
);

select *from  invoice;

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE PROD_ID IN ( 
        SELECT PROD_ID  
        FROM products  
        WHERE CAT_ID = 2 
    ) 
);

select *from  invoice;

select * from cart;

select * from products;

select * from users;

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE prod_id IN ( 
    	select prod_id  
    	from products  
    	where cat_id in( 
    		select cat_id  
    		from categories  
    		where cat_name='clothes' 
        )     
    ) 
);

select *from  invoice;

select * from cart;

select * from products;

select * from users;

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE prod_id IN ( 
    	select prod_id  
    	from products  
    	where cat_id in( 
    		select cat_id  
    		from categories  
    		where cat_name='clothes' 
        )     
    ) 
);

select *from  categories;

select * from cart;

select * from products;

select * from users;

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE prod_id IN ( 
    	select prod_id  
    	from products  
    	where cat_id in( 
    		select cat_id  
    		from categories  
    		where cat_name='clothes' 
        )     
    ) 
);

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE prod_id IN ( 
    	select prod_id  
    	from products  
    	where cat_id in( 
    		select cat_id  
    		from categories  
    		where cat_name='CLOTHES' 
        )     
    ) 
);

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT user_name, ph_no, email 
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE prod_id IN ( 
    	select prod_id  
    	from products  
    	where cat_id in( 
    		select cat_id  
    		from categories  
    		where cat_name='CLOTHES' 
        )     
    ) 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p ORDER BY(TOTAL_EARNED);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p ORDER BY( (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID));

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) ORDER BY (SUM(TOTAL_AMT)) AS TOTAL_EARNED 
FROM products p ;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products AS TOTAL_EARNED 
FROM products p ;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products AS TOTAL_EARNED 
FROM products p ;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products)) AS TOTAL_EARNED 
FROM products p;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

 WHERE CAT_ID = p.CAT_ID


SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p 
ORDER BY TOTAL_EARNED DESC 
LIMIT 1;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT * FROM ( 
    SELECT  
        (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
        (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
            (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
    FROM products p 
    ORDER BY TOTAL_EARNED DESC 
) WHERE ROWNUM = 1;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT  
    (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
    (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
        (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
FROM products p;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT * FROM ( 
    SELECT  
        (SELECT CAT_NAME FROM categories WHERE CAT_ID = p.CAT_ID) AS CATEGORY, 
        (SELECT SUM(TOTAL_AMT) FROM cart WHERE PROD_ID IN  
            (SELECT PROD_ID FROM products WHERE CAT_ID = p.CAT_ID)) AS TOTAL_EARNED 
    FROM products p 
    ORDER BY TOTAL_EARNED DESC 
) WHERE ROWNUM = 1;

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT * FROM products WHERE SUPP_ID = (SELECT SUPP_ID FROM suppliers WHERE SUPP_NAME = 'Fashion Emporium India');

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT * FROM products WHERE SUPP_ID = (SELECT SUPP_ID FROM suppliers WHERE SUPP_ADD = '%MAHARASHTRA%');

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT * FROM products WHERE SUPP_ID IN (SELECT SUPP_ID FROM suppliers WHERE SUPP_ADD LIKE '%MAHARASHTRA%');

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT * FROM products WHERE SUPP_ID IN (SELECT SUPP_ID FROM suppliers WHERE SUPP_ADD LIKE '%Maharashtra%');

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'ELECTRONICS' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%MAHARASHTRA%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'ELECTRONICS' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'CLOTHES' 
);

SELECT * FROM INVOICE;

select *from  categories;

SELECT * FROM products WHERE SUPP_ID IN (SELECT SUPP_ID FROM suppliers WHERE SUPP_ADD LIKE '%Maharashtra%');

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'ELECTRONICS' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'ELECTRONICS' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'ELECTRONICS' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'CLOTHES' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM products  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM suppliers  
    WHERE SUPP_ADD LIKE '%Maharashtra%' 
)  
AND CAT_ID = ( 
    SELECT CAT_ID  
    FROM categories  
    WHERE CAT_NAME = 'CLOTHES' 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM users  
WHERE USER_STATE IN ( 
    SELECT USER_STATE  
    FROM users  
    GROUP BY USER_STATE  
    HAVING COUNT(USER_ID) > ( 
        SELECT AVG(user_count)  
        FROM ( 
            SELECT USER_STATE, COUNT(USER_ID) as user_count  
            FROM users  
            GROUP BY USER_STATE 
        ) AS subquery 
    ) 
)  
AND USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice  
        WHERE PAYMENT_MODE = 'Cash' 
    ) 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM suppliers  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM products  
    WHERE PROD_PRICE > ( 
        SELECT AVG(PROD_PRICE)  
        FROM products 
    ) 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice  
        WHERE USER_ID IN ( 
            SELECT USER_ID  
            FROM users  
            WHERE USER_STATE IN ( 
                SELECT USER_STATE  
                FROM users  
                GROUP BY USER_STATE  
                HAVING COUNT(USER_ID) > 2 
            ) 
        ) 
    ) 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM suppliers  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM products  
    WHERE PROD_PRICE > 1000 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM suppliers  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM products  
    WHERE PROD_PRICE > 500 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM suppliers  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM products  
    WHERE PROD_PRICE > 700 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM suppliers  
WHERE SUPP_ID IN ( 
    SELECT SUPP_ID  
    FROM products  
    WHERE PROD_PRICE > 600 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice 
    ) 
)  
AND USER_STATE IN ( 
    SELECT USER_STATE  
    FROM users  
    GROUP BY USER_STATE  
    HAVING COUNT(USER_ID) > 1 
);

SELECT * FROM INVOICE;

select *from  categories;

select * from products;

select * from cart;

select * from users;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice 
    ) 
)  
AND USER_STATE IN ( 
    SELECT USER_STATE  
    FROM users  
    GROUP BY USER_STATE  
    HAVING COUNT(USER_ID) > 1 
);

SELECT * FROM INVOICE;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice 
    ) 
)  
 
 
 
 
 
SELECT * FROM INVOICE;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice 
    ) 
) ;

SELECT * FROM INVOICE;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT *  
FROM users  
WHERE USER_ID IN ( 
    SELECT USER_ID  
    FROM cart  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM invoice 
    ) 
) ;

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT CART_ID FROM INVOICE WHERE DATE > '20-MAR-24';

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY');

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY') ORDER BY CART_ID;

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_ID FROM PRODUCTS WHERE PROD_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY') ORDER BY CART_ID);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_ID FROM PRODUCTS WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY') ORDER BY CART_ID);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY') ORDER BY CART_ID);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY') ORDER BY (CART_ID));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY'));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_NAME FROM PRODUCTS WHERE (SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME,SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY'))) FROM USERS ;

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME,(SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')))) FROM USERS ;

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART c WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT u.USER_NAME, p.PROD_NAME  
FROM USERS u 
JOIN CART c ON u.USER_ID = c.USER_ID 
JOIN PRODUCTS p ON c.PROD_ID = p.PROD_ID 
WHERE c.CART_ID IN ( 
    SELECT CART_ID  
    FROM INVOICE  
    WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT  
    (SELECT USER_NAME  
     FROM USERS  
     WHERE USER_ID = (SELECT USER_ID  
                      FROM CART  
                      WHERE CART_ID IN ( 
                          SELECT CART_ID  
                          FROM INVOICE  
                          WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
                      ) 
                     ) 
    ) AS USERNAME, 
    PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT  
    (SELECT USER_NAME  
     FROM USERS  
     WHERE USER_ID = ( 
         SELECT MAX(USER_ID)  
         FROM CART  
         WHERE CART_ID IN ( 
             SELECT CART_ID  
             FROM INVOICE  
             WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
         ) 
     ) 
    ) AS USERNAME, 
    PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT PROD_NAME FROM PRODUCTS WHERE PROD_ID IN (SELECT PROD_ID FROM CART c WHERE CART_ID IN (SELECT CART_ID FROM INVOICE WHERE DOI > TO_DATE('20-MAR-24', 'DD-MON-YY')));

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT DISTINCT u.USER_NAME 
FROM users u, cart c, invoice i, products p, suppliers s 
WHERE u.USER_STATE = 'Andhra Pradesh' 
AND u.USER_ID = c.USER_ID 
AND c.CART_ID = i.CART_ID 
AND c.PROD_ID = p.PROD_ID 
AND p.SUPP_ID = s.SUPP_ID 
AND s.SUPP_ADD LIKE '%Maharashtra%';

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT DISTINCT USER_NAME 
FROM users 
WHERE USER_STATE = 'Andhra Pradesh' 
AND USER_ID IN ( 
    SELECT c.USER_ID 
    FROM cart c 
    WHERE c.PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE SUPP_ID IN ( 
            SELECT SUPP_ID 
            FROM suppliers 
            WHERE SUPP_ADD LIKE '%Maharashtra%' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT  USER_NAME 
FROM users 
WHERE USER_STATE = 'Andhra Pradesh' 
AND USER_ID IN ( 
    SELECT c.USER_ID 
    FROM cart c 
    WHERE c.PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE SUPP_ID IN ( 
            SELECT SUPP_ID 
            FROM suppliers 
            WHERE SUPP_ADD LIKE '%Maharashtra%' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME 
FROM users 
WHERE USER_STATE = 'Andhra Pradesh' 
AND USER_ID IN ( 
    SELECT USER_ID 
    FROM cart 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE SUPP_ID IN ( 
            SELECT SUPP_ID 
            FROM suppliers 
            WHERE SUPP_ADD LIKE '%Maharashtra%' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME, EMAIL, PH_NO, TOTAL_AMT 
FROM users 
WHERE USER_ID IN ( 
    SELECT USER_ID 
    FROM cart 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE CAT_ID = ( 
            SELECT CAT_ID 
            FROM categories 
            WHERE CAT_NAME = 'ELECTRONICS' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME, EMAIL, PH_NO 
FROM users 
WHERE USER_ID IN ( 
    SELECT USER_ID 
    FROM cart 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE CAT_ID = ( 
            SELECT CAT_ID 
            FROM categories 
            WHERE CAT_NAME = 'ELECTRONICS' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME, EMAIL, PH_NO, c.TOTAL_AMT 
FROM users 
WHERE USER_ID IN ( 
    SELECT USER_ID 
    FROM cart C 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE CAT_ID = ( 
            SELECT CAT_ID 
            FROM categories 
            WHERE CAT_NAME = 'ELECTRONICS' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME, EMAIL, PH_NO, c.TOTAL_AMT 
FROM users 
WHERE USER_ID IN ( 
    SELECT USER_ID 
    FROM cart c 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE CAT_ID = ( 
            SELECT CAT_ID 
            FROM categories 
            WHERE CAT_NAME = 'ELECTRONICS' 
        ) 
    ) 
);

SELECT USER_NAME, EMAIL, PH_NO 
FROM users 
WHERE USER_ID IN ( 
    SELECT USER_ID 
    FROM cart 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE CAT_ID = ( 
            SELECT CAT_ID 
            FROM categories 
            WHERE CAT_NAME = 'ELECTRONICS' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT USER_NAME, EMAIL, PH_NO 
FROM users 
WHERE USER_ID IN ( 
    SELECT USER_ID 
    FROM cart 
    WHERE PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE CAT_ID = ( 
            SELECT CAT_ID 
            FROM categories 
            WHERE CAT_NAME = 'ELECTRONICS' 
        ) 
    ) 
);

SELECT * FROM INVOICE ORDER BY(INVOICE_ID) ;

select * from cart;

select * from products;

select *from  categories;

select * from users;

select * from SUPPLIers;

SELECT DISTINCT USER_NAME 
FROM users 
WHERE USER_STATE = 'Andhra Pradesh' 
AND USER_ID IN ( 
    SELECT c.USER_ID 
    FROM cart c 
    WHERE c.PROD_ID IN ( 
        SELECT PROD_ID 
        FROM products 
        WHERE SUPP_ID IN ( 
            SELECT SUPP_ID 
            FROM suppliers 
            WHERE SUPP_ADD LIKE '%Maharashtra%' 
        ) 
    ) 
);

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI= TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI = TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI = TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI = TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

 SELECT * FROM INVOICE;

SELECT PROD_NAME  
FROM PRODUCTS  
WHERE PROD_ID IN ( 
    SELECT PROD_ID  
    FROM CART  
    WHERE CART_ID IN ( 
        SELECT CART_ID  
        FROM INVOICE  
        WHERE DOI > TO_DATE('20-MAR-23', 'DD-MON-YY') 
    ) 
);

 SELECT * FROM INVOICE;

SELECT * 
FROM users 
INNER JOIN invoice ON users.user_id = invoice.user_id;

SELECT * 
FROM cart 
INNER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
INNER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
LEFT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
RIGHT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
FULL OUTER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
CROSS JOIN invoice;

SELECT * FROM CART;

SELECT * FROM INVOICE;

SELECT * 
FROM cart 
INNER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
LEFT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
RIGHT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
FULL OUTER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
CROSS JOIN invoice;

SELECT * FROM CART ORDER BY CART_ID;

SELECT * FROM INVOICE ORDER BY INVOICE_ID;

SELECT * 
FROM cart 
INNER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
LEFT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
RIGHT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
FULL OUTER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
CROSS JOIN invoice;

ALTER TABLE INVOICE DROP COLUMN WHERE INVOICE_ID = 6,7;

ALTER TABLE INVOICE DROP COLUMN WHERE INVOICE_ID = 6;

DELETE FROM INVOICE WHERE INVOICE_ID=6,7;

DELETE FROM INVOICE WHERE INVOICE_ID=6;

DELETE FROM INVOICE WHERE INVOICE_ID=7;

SELECT * FROM CART ORDER BY CART_ID;

SELECT * FROM INVOICE ORDER BY INVOICE_ID;

SELECT * 
FROM cart 
INNER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
LEFT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
RIGHT JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
FULL OUTER JOIN invoice ON cart.cart_id = invoice.cart_id;

SELECT * 
FROM cart 
CROSS JOIN invoice;

SELECT * 
FROM users 
INNER JOIN cart ON users.user_id = cart.user_id;

SELECT * 
FROM invoice 
INNER JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
INNER JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
LEFT JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
RIGHT JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
FULL OUTER JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
INNER JOIN cart ON invoice.cart_id = cart.cart_idORDER BY INVOICE ORDER BY INVOICE_ID;

SELECT * 
FROM invoice 
LEFT JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
RIGHT JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
FULL OUTER JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
INNER JOIN cart ON invoice.cart_id = cart.cart_id ORDER BY INVOICE_ID;

SELECT * 
FROM invoice 
LEFT JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
RIGHT JOIN cart ON invoice.cart_id = cart.cart_id;

SELECT * 
FROM invoice 
FULL OUTER JOIN cart ON invoice.cart_id = cart.cart_id;

