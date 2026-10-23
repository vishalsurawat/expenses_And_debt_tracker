-- We are creating table schema here first so we can insert value accordingly,

-- First we have to choose Databases for work in it .

USE Expenses_and_dept_tracker ;

-- then we are creating table users

CREATE TABLE users (
   user_id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(50) NOT NULL ,
   email VARCHAR(30) ,
   phone VARCHAR(10),
   city VARCHAR(50),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
   ) ;



-- NOW we are going to create income table for analyze our income.

CREATE TABLE income ( 
user_id INT PRIMARY KEY,
amount INT NOT NULL,
income_source VARCHAR(50),
income_date DATE NOT NULL,

Creating foreign key for connecting table :

FOREIGN KEY (user_id) REFERENCES users(user_id) 
);
DROP TABLE income ;

USE expenses_and_dept_tracker ;

-- We are creating table Expenses For analyz expenses of users :

CREATE TABLE Expenses (
expense_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
amount INT NOT NULL,
category VARCHAR(50),
expense_date DATE NOT NULL,
payment_method VARCHAR(50),

-- We declare foreign key here so table can connect itself :

FOREIGN KEY (user_id) REFERENCES users(user_id)
); 
DROP TABLE IF EXISTS Expenses ;


CREATE TABLE debts (
debt_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL ,
person_name VARCHAR(50) NOT NULL,
amount INT NOT NULL,
debt_type ENUM("Borrowed","Lent") NOT NULL,
debt_date DATE NOT NULL,
due_date DATE ,
status ENUM("pending","received") DEFAULT "pending",

-- Again creating Foreign key for conectivity of of each table :

FOREIGN KEY (user_id)
REFERENCES users(user_id) 
);
DROP TABLE depts;









 