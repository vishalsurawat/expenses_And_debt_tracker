-- Q1) SHOW TABLES ?

SELECT * FROM Expenses ;
SELECT * FROM income ;

-- Q2)  SHOW amount greater than 15000 in income table ?
  
SELECT * FROM income WHERE amount  >= 15000 ;

-- Q3) SHOW user's income source in income table :

SELECT user_id  FROM income WHERE income_source = "salary" ;



-- # AND , OR -> 

-- Q5) SHOW amount greater then 1000 and payment method = upi in expenses table :
 
SELECT * FROM expenses WHERE amount > 1000 AND payment_method = "UPI" ;

-- Q6) show table where category is petrol unless show category = shoping in expenses table:

SELECT * FROM expenses WHERE category = "petrol" OR category = "shopping" ;

-- Q7) show table where payment method is cash unless show payment method = card in expenses table:


SELECT * FROM expenses WHERE payment_method = "cash" OR payment_method = "card" ;

--  ASCENDING ORDER AND DESCENDING ORDER :

-- Q8) SHOW table in descending order :

SELECT * FROM expenses 
ORDER BY amount DESC ;

-- Q8) SHOW table in ASCENDING ORDER :

SELECT * FROM expenses 
ORDER BY amount ASC ;


-- Q9) SHOW TOP 5 HIGHEST EXPENSE AMOUNT IN EXPENSES TABLE : 

SELECT  *  FROM expenses 
ORDER BY amount DESC LIMIT 5 ;

-- Q10) GET TOTAL AMOUNT OF USER'S IN INCOME TABLE : 

SELECT SUM(amount) FROM income ; 




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



-- GROUP BY 

-- Q11) FIND TOTAL EXPENSES FOR EACH CATEGORY :

SELECT category , sum(amount)
FROM expenses 
GROUP BY category ;

-- Q12) FIND AVERAGE OF EXPENSES FOR EACH CATEGORY :

SELECT category , AVG(amount)
FROM expenses 
GROUP BY category;

-- Q13) FIND TOTAL EXPENSE AND TOTAL RECORDS FOR EACH CATEGORY :

SELECT category, SUM(amount),COUNT(expense_id)
FROM expenses GROUP BY category ;


-- Q14) SHOW TOTAL AMOUNT OF EXPENSE FOR EACH USER :

SELECT user_id , SUM(amount)
FROM expenses 
GROUP BY user_id ;

-- Q15)SHOW TOTAL AMOUNT OF USER IN DESCENDING ORDER :

SELECT user_id , SUM(amount)
FROM expenses 
GROUP BY user_id
ORDER BY SUM(amount) DESC ;




