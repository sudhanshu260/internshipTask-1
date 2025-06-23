# internshipTask-1
SQL schema for a Library Management System. Includes table creation scripts, ER diagram structure, and interview Q&amp;A for SQL Developer Internship Task 1.
 Library Management System - SQL Schema

 Overview:
This project represents a simple Library Database with four entities:
- Authors
- Books
- Members
- Loans

Technologies:
- MySQL Workbench

Features:
- Normalized schema
- Primary and foreign key constraints
- Auto-increment surrogate keys

Tables:
1. `Authors` - Contains author details
2. `Books` - Linked to authors
3. `Members` - Library members
4. `Loans` - Tracks who borrowed which book and when

 ER Diagram: LINK :- https://drive.google.com/file/d/1wyXmycN-HPlGkivCjZfShLjY0Ez1YOUh/view?usp=drive_link
 
How to Run:
- Copy and run the SQL script in MySQL Workbench.
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
As part of the SQL Developer Internship Task 1, I designed a complete database schema for a Library Management System using SQL. I chose the "Library" domain to model real-world library operations such as book lending and author tracking.

I identified four main entities: Authors, Books, Members, and Loans. The schema was structured to avoid redundancy by applying normalization principles and establishing proper relationships between entities. Appropriate data types were selected based on the attributes of each entity.

I created the tables using the CREATE TABLE statement with primary keys, foreign keys, and AUTO_INCREMENT for surrogate keys. One-to-many relationships were established, for example, one author can write many books, and one member can borrow many books.

To maintain data integrity, I implemented constraints such as NOT NULL, UNIQUE, and proper foreign key references across the tables.
