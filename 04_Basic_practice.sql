SELECT * FROM Expenses ;
SELECT * FROM income ;

SELECT * FROM income WHERE amount  >= 15000 ;

SELECT user_id  FROM income WHERE income_source = "salary" ;


SELECT * FROM users,income WHERE city = "ujjain";

SELECT * FROM users,income WHERE amount >= 15000 ;


SELECT * FROM expenses ;

SELECT COUNT(*) FROM Expenses ;
SELECT * FROM Expenses ;

SELECT * FROM INCOME WHERE amount >= 10000 ;

SELECT * FROM Expenses WHERE payment_method = "UPi" ;

SELECT * FROM expenses WHERE amount >= 1000 ;

SELECT * FROM expenses WHERE amount > 1000 AND payment_method = "UPI" ;

SELECT * FROM expenses WHERE category = "petrol" OR category = "shopping" ;

SELECT * FROM expenses WHERE payment_method = "cash" OR payment_method = "card" ;

SELECT * FROM expenses 
ORDER BY amount DESC ;

SELECT * FROM expenses 
ORDER BY amount ASC ;

SELECT  *  FROM expenses 
ORDER BY amount DESC LIMIT 5 ;

SELECT SUM(amount) FROM income ; 

SELECT * FROM debts ;


DESC income ;
SHOW CREATE TABLE income ;
ALTER TABLE income MODIFY amount DECIMAL(10,2) ;
ALTER TABLE income DROP FOREIGN KEY income_ibfk_1;

ALTER TABLE income DROP PRIMARY KEY ;ALTER TABLE income ADD COLUMN income_id INT NOT NULL
AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE income ADD CONSTRAINT fk_income_users
FOREIGN KEY (user_id) 
REFERENCES users(user_id) ;


DESC income ;

ALTER TABLE expenses MODIFY amount DECIMAL(10,2) NOT NULL ;

ALTER TABLE debts MODIFY amount DECIMAL(10,2) NOT NULL;

DESC expenses;

DESC debts ;



