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

-- > JOINS (inner join, left join, right join) ->

-- Q1) display user name with their expenses : 

USE expenses_and_dept_tracker ;

SELECT u.name , e.amount,i.income_source
FROM users u 
INNER JOIN expenses e 
ON u.user_id = e.user_id;

-- Q2) display user's names,expenses categories and amounts .

SELECT u.name, e.category, e.amount 
FROM users u 
INNER JOIN expenses e 
ON u.user_id = e.user_id ;

-- Q3) display user's name, emails,expense categories, and amounts .

SELECT u.name, u.email,e.category,e.amount 
FROM users u 
INNER JOIN expenses e
ON u.user_id = e.user_id ;

SELECT u.name,SUM(e.amount) 
FROM users u 
INNER JOIN expenses e 
ON u.user_id = e.user_id
GROUP BY u.user_id ,u.name ;

-- Q4) display user's name , income amount expense amount ,debts amount:

SELECT u.name,i.amount,e.amount,d.amount
FROM users u 
INNER JOIN income i 
ON u.user_id = i.user_id 
JOIN expenses e 
ON u.user_id = e.user_id 
JOIN debts d
ON u.user_id = d.user_id ;


-- Q5 display user's name , total income amount , total expenses amount and total of debts :

SELECT u.name , SUM(i.amount), SUM(e.amount), SUM(d.amount)
FROM users u 
INNER JOIN income i 
ON u.user_id = i.user_id 
INNER JOIN expenses e 
ON u.user_id = e.user_id 
INNER JOIN debts d
ON u.user_id = d.user_id 
GROUP BY u.name ;

-- Q6) display name of user and total income amount, total expense amount and total "lent" amount of debts table :

SELECT u.name,SUM(i.amount), SUM(e.amount), SUM(d.amount) 
FROM users u 
INNER JOIN income i  
ON u.user_id = i.user_id 
INNER JOIN expenses e 
ON u.user_id = e.user_id 
INNER JOIN debts d 
ON u.user_id = d.user_id 
WHERE d.debt_type = "lent"
GROUP BY name ;


-- Q7) display all user name with their debt person name, debt amount and debt type :

SELECT u.name,d.person_name,d.amount,d.debt_type
FROM users u 
INNER JOIN debts d
ON u.user_id = d.user_id ;
   
-- Q8) display all user name with their debt person name, debt amount and debt type which should be "lent"

SELECT u.name,d.person_name,d.amount,d.debt_type
FROM users u 
INNER JOIN debts d
ON u.user_id = d.user_id 
WHERE d.debt_type = "Lent" ;
   
-- Q8) display user name , expense category, expense amount and payment method using joins 

SELECT u.name , e.category, e.amount , e.payment_method
FROM users u
INNER JOIN expenses e
ON u.user_id = e.user_id ;

-- Q9) display user name , expense category, expense amount and payment method using joins but payment method should be UPI : 

SELECT u.name , e.category, e.amount , e.payment_method
FROM users u
INNER JOIN expenses e
ON u.user_id = e.user_id 
WHERE e.payment_method = "UPI" ;

-- Q10) display user name,income source and amount but with condition is amount should be greater then 5000 :

SELECT u.name,i.income_source,i.amount
FROM users u
INNER JOIN income i
ON u.user_id = i.user_id 
WHERE i.amount > 5000 ORDER BY i.amount DESC ; 

-- Q10) display all users with their person_name,debt amount and debt type,debt type should be "Borrowed" and amount should be in Ascending order :

SELECT u.name, d.person_name,d.amount ,d.debt_type
FROM users u 
INNER JOIN debts d
ON u.user_id = d.user_id 
WHERE d.debt_type = "Borrowed" 
ORDER BY d.amount ASC ;

-- Q11) Display all users whose income is greater than 5000 in DESCENDING order :

SELECT u.name, i.income_source,i.amount 
FROM users u
INNER JOIN income i
ON u.user_id = i.user_id
WHERE i.amount >= 5000
ORDER BY i.amount DESC ;


-- LEFT JOIN ->

-- Q1) display all users expense amount including all users whose expense amount is not available in expenses table :

SELECT u.name,e.amount
FROM users u
LEFT JOIN expenses e 
ON u.user_id = e.user_id ;

-- Q2) display all users whose expense id is null :

SELECT u.name,e.expense_id 
FROM users u 
LEFT JOIN expenses e   
ON  u.user_id = e.user_id 
WHERE e.expense_id IS NULL ; 



























