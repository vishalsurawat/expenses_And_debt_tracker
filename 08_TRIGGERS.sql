-- TRIGGERS

--  first we have to create a log table for analyz new record : 
CREATE TABLE user_log (log_id INT PRIMARY KEY AUTO_INCREMENT,message VARCHAR(100),
log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP )


-- Q1) CREATE A trigger and display a message in log table that a new user added with date : 
DELIMITER //
CREATE TRIGGER after_user_insert
AFTER INSERT ON users 
FOR EACH ROW
BEGIN 
INSERT INTO user_log(massege) 
VALUES ("New user added succesfully") ;
END // 

-- Q2) create trigger where when we insert in debt table then it will show us a message in log table :
CREATE TABLE debt_log (debt_id INT , date TIMESTAMP DEFAULT CURRENT_TIMESTAMP, message VARCHAR(100)
) ;
DELIMITER //
CREATE TRIGGER after_debt_insert 
AFTER INSERT ON debts 
FOR EACH ROW
BEGIN
INSERT INTO debt_log (debt_id,message)
VALUES (32,"new person added ") ;
END //
 INSERT INTO debts(debt_id,user_id,person_name,amount,debt_type,status)
VALUES (32,32,"vikas",3000,"lent","pending")//

SELECT * FROM debt_log //

-- Q3)  CREATE A TRIGGER THAT HELPS TO KNOW user's before income after his increment in salary amount ;
CREATE TABLE  income_log (income_id INT , old_amount DECIMAL (10,2),new_amount DECIMAL(10,2),
 date TIMESTAMP DEFAULT CURRENT_TIMESTAMP) ;





DELIMITER //
CREATE TRIGGER amount_before_increment
AFTER UPDATE ON income 
FOR EACH ROW 
BEGIN 
INSERT INTO income_log (income_id,old_amount,new_amount)
VALUES (OLD.income_id,old.amount,new.amount);
END //

UPDATE income SET amount = 15000 WHERE 
income_id = 1 //

SELECT * FROM income_log //

-- Q4)  CREATE A TRIGGER THAT STORES THE OLD AND NEW STATUS WHENEVER A DEBT'S STATUS IS UPDATED :

CREATE TABLE debt_status_log(log_id INT auto_increment primary key ,
user_id INT ,
old_status VARCHAR(20),
new_status varchar (20),
change_at TIMESTAMP DEFAULT current_timestamp
);

DELIMITER //
CREATE TRIGGER status_of_debts
AFTER UPDATE ON debts 
FOR EACH ROW 
BEGIN 
INSERT INTO debt_status_log(user_id,old_status,new_status )
VALUES (OLD.user_id ,OLD.status,new.status) ;
END //

 UPDATE debts SET status = "received"
WHERE user_id = 2//
 SELECT * FROM debt_status_log //


 


-- Q5) CREATE TRIGGER that stores the old and new amount whenever the amount changes :


CREATE TABLE amount_status_log(debt_id INT auto_increment PRIMARY KEY,
old_amount DECIMAL(10,2), new_amount DECIMAL(10,2), 
change_at timestamp default current_timestamp ) ;


DELIMITER //
CREATE TRIGGER amount_status
AFTER UPDATE ON debts 
FOR EACH ROW 
BEGIN
INSERT INTO amount_status_log 
VALUES (OLD.debt_id,OLD.amount,new.amount,new.debt_date) ;
END //

 
 UPDATE debts  SET amount = 15000 
 WHERE debt_id = 1 //
 
 
 SELECT * FROM amount_status_log //
 
 
 
 -- Q6) CREATE A TRIGGER THAT STORES THE OLD AND NEW DUE DATES WHENEVER A DEBTS DUE_DATE IS UPDATED :
 
 CREATE TABLE debt_date_log (debt_id INT auto_increment,
 old_due_date DATE,
 new_due_date DATE ,
 change_at timestamp default current_timestamp 
 ) ;
 
  
 DELIMITER //
 CREATE TRIGGER debt_due_date_change
 AFTER UPDATE ON debts 
 FOR EACH ROW 
 BEGIN 
 INSERT INTO debt_date_log(old_due_date,new_due_date) 
 VALUES(old.due_date,new.due_date) ;
 END //

UPDATE debts SET due_date = "2026-10-30"
WHERE debt_id = 1 //


select* FROM debt_date_log//
