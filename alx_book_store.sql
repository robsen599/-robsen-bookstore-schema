-- SAFE RESET: DROP AND RECREATE THE DATABASE
DROP DATABASE IF EXISTS alx_book_store;
CREATE DATABASE alx_book_store;
USE alx_book_store;
-- AUTHORS TABLE
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- BOOKS TABLE
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(215) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- CUSTOMERS TABLE
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    customer_email VARCHAR(215) NOT NULL
);

-- ORDERS TABLE
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- ORDER_DETAILS TABLE
CREATE TABLE Order_Details (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);