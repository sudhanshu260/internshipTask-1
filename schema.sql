create database libraryDB;
use libraryDB;

Create table Authors (
    author_id int auto_increment PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    book_id int auto_increment PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id int,
    published_year int,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id int auto_increment PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);


CREATE TABLE Loans (
    loan_id int auto_increment  PRIMARY KEY,
    member_id int,
    book_id int,
    loan_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);