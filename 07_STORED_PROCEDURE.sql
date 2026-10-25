USE expenses_and_dept_tracker ;


Q1) display all user expenses category,amount,date and payment method using STORED PROCEDURE :

DELIMITER //
CREATE PROCEDURE get_user_expenses(IN u_id INT )
BEGIN
SELECT u.name,e.category,e.anount,e.expense_date,e.payment_method
FROM users u
INNER JOIN expenses e 
ON u.user_id = e.user_id 
WHERE u.user_id = u_id 
ORDER BY e.expense_date DESC ;
END //

CALL get_user_expenses(3) //

-- Q2) Diplay total amount of user's expenses using STORED PROCEDURE :
DELIMITER //
CREATE PROCEDURE get_total_expense(IN u_id INT)
BEGIN
SELECT u.name,SUM(e.amount) AS TOTAL_expenses 
FROM users u 
INNER JOIN expenses e 
ON u.user_id = e.user_id 
WHERE u.user_id = u_id 
GROUP BY u.user_id , u.name ;
END //

CALL get_total_expense(4) //

-- DROP PROCEDURE get_total_expense ;

-- Q3) display user's total monthly expenses using PROCEDURE :
DELIMITER //
CREATE PROCEDURE get_monthly_expense(IN P_user_id INT )
BEGIN
SELECT u.name,YEAR(e.expense_date) AS expense_year,
MONTH(e.expense_date) AS expense_month,
SUM(e.amount) AS total_expenses 
FROM users u 
INNER JOIN expenses e 
ON u.user_id = e.user_id 
WHERE u.user_id = P_user_id 
GROUP BY u.user_id,u.name,YEAR(e.expense_date),MONTH(e.expense_date) 
ORDER BY expense_month DESC ;
END //

CALL get_monthly_expense(20) //

 -- OUT PARAMETER ->
 -- Q1) display users total expense amount Using out parameter in STORED PROCEDURE ;
 
CREATE PROCEDURE get_total_expense_amount(IN p_user_id INT,
OUT p_total DECIMAL(10,2) ) 
BEGIN 
SELECT SUM(amount) INTO p_total FROM
expenses WHERE user_id = p_user_id ;
END //


CALL get_total_expense_amount(2,@total) // 

SELECT @total //


-- Q2) display users total income amount using OUT parmeter in STORED PROCEDURE 
DELIMITER // 
CREATE PROCEDURE get_total_income_amount(IN p_user_id INT,OUT
total_income DECIMAL(10,2) )
BEGIN 
SELECT SUM(amount) INTO total_income
FROM income 
WHERE income_id = p_user_id ;
END //

CALL get_total_income_amount(2,@income) //

SELECT @income//

-- Q3) display users total debt value using procedure :
CREATE PROCEDURE debtor_total(IN u_id INT ,
OUT total_debts DECIMAL(10,2) )
BEGIN 
SELECT SUM(amount) INTO total_debts
FROM debts WHERE user_id = u_id ;
END //

CALL debtor_total (2,@debt_total) //
SELECT @debt_total //

-- Q4) display debt person name using procedure :
CREATE PROCEDURE get_debt_person_name(IN u_id INT,
OUT p_name VARCHAR(50) )
BEGIN 
SELECT person_name INTO p_name FROM debts
 WHERE user_id = u_id ;
 END // 
 
 CALL get_debt_person_name(8,@name) //
 SELECT @name //

-- Q5) display total amount of users payble using procedure :

USE expenses_and_dept_tracker //
CREATE PROCEDURE get_debt_total(OUT total_debt DECIMAL (10.2) )
BEGIN
SELECT SUM(amount) INTO total_debt 
FROM debts WHERE debt_type = "lent" ;
END //

CALL get_debt_total(@total) //
SELECT @total //




