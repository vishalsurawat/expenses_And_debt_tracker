-- > JOINS (inner join, left join, right join) ->
       USE expenses_and_dept_tracker ;
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

