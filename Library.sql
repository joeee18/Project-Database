CREATE DATABASE Library;
use Library

CREATE TABLE books (
  book_id INT NOT NULL IDENTITY,
  title VARCHAR(40) NOT NULL,
  author VARCHAR(35) NOT NULL,
  category VARCHAR(10) NOT NULL,
  purchase_price float NOT NULL,
  date_purchased DATE NOT NULL,
  constraint book_id_pk PRIMARY KEY (book_id)
);

CREATE TABLE users (
  user_id INT NOT NULL IDENTITY,
  name VARCHAR(35) NOT NULL,
  address VARCHAR(100) NOT NULL,
  phone_number VARCHAR(11) NOT NULL,
  email VARCHAR(80) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE transactions (
  transaction_id INT NOT NULL IDENTITY,
  book_id INT NOT NULL,
  user_id INT NOT NULL,
  borrow_date DATE NOT NULL,
  return_date DATE,
  status VARCHAR(10) NOT NULL,
  constraint book_id_fk FOREIGN KEY (book_id) REFERENCES books (book_id),
  constraint user_id_fk FOREIGN KEY (user_id) REFERENCES users (user_id),
  constraint transaction_id_pk PRIMARY KEY (transaction_id)
);