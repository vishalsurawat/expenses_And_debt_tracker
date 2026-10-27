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
desc debts ;
INSERT INTO debts(debt_id,user_id,person_name,amount,debt_type,status)
VALUES (32,32,"vikas",3000,"lent","pending")//

SELECT * FROM debt_log //


-- CREATE A TRIGGER THAT HELP US TO SHOW MESSAGE WHEN WE DELETE ANYTHING FROM DEBTS TABLE :
CREATE  TABLE debts_information(
debt_id INT auto_increment,message VARCHAR(100),date timestamp );

 CREATE  TABLE debts_information(
debt_id INT ,message VARCHAR(100),date DATE );
debt_id INT ,message VARCHAR(100),date DATE );
