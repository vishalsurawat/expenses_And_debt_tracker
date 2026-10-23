INSERT INTO users
(name, email, phone, city)
VALUES
('Rahul Sharma', 'rahul.sharma01@example.com', '9000000001', 'Ujjain'),
('Amit Verma', 'amit.verma02@example.com', '9000000002', 'Indore'),
('Priya Patel', 'priya.patel03@example.com', '9000000003', 'Bhopal'),
('Rohit Jain', 'rohit.jain04@example.com', '9000000004', 'Ujjain'),
('Neha Gupta', 'neha.gupta05@example.com', '9000000005', 'Dewas'),
('Arjun Singh', 'arjun.singh06@example.com', '9000000006', 'Indore'),
('Pooja Yadav', 'pooja.yadav07@example.com', '9000000007', 'Bhopal'),
('Karan Mehta', 'karan.mehta08@example.com', '9000000008', 'Ratlam'),
('Anjali Joshi', 'anjali.joshi09@example.com', '9000000009', 'Ujjain'),
('Vivek Soni', 'vivek.soni10@example.com', '9000000010', 'Dewas'),
('Sneha Mishra', 'sneha.mishra11@example.com', '9000000011', 'Indore'),
('Mohit Rathore', 'mohit.rathore12@example.com', '9000000012', 'Ujjain'),
('Kavita Sharma', 'kavita.sharma13@example.com', '9000000013', 'Bhopal'),
('Deepak Chouhan', 'deepak.chouhan14@example.com', '9000000014', 'Ratlam'),
('Simran Kaur', 'simran.kaur15@example.com', '9000000015', 'Indore'),
('Nikhil Agrawal', 'nikhil.agrawal16@example.com', '9000000016', 'Ujjain'),
('Riya Tiwari', 'riya.tiwari17@example.com', '9000000017', 'Dewas'),
('Saurabh Dubey', 'saurabh.dubey18@example.com', '9000000018', 'Bhopal'),
('Komal Jain', 'komal.jain19@example.com', '9000000019', 'Ujjain'),
('Manish Patel', 'manish.patel20@example.com', '9000000020', 'Indore'),
('Tanya Verma', 'tanya.verma21@example.com', '9000000021', 'Ratlam'),
('Akash Solanki', 'akash.solanki22@example.com', '9000000022', 'Dewas'),
('Divya Sharma', 'divya.sharma23@example.com', '9000000023', 'Bhopal'),
('Gaurav Mehta', 'gaurav.mehta24@example.com', '9000000024', 'Ujjain'),
('Nisha Soni', 'nisha.soni25@example.com', '9000000025', 'Indore'),
('Varun Joshi', 'varun.joshi26@example.com', '9000000026', 'Dewas'),
('Meena Yadav', 'meena.yadav27@example.com', '9000000027', 'Bhopal'),
('Harsh Gupta', 'harsh.gupta28@example.com', '9000000028', 'Ujjain'),
('Payal Rathore', 'payal.rathore29@example.com', '9000000029', 'Ratlam'),
('Aditya Mishra', 'aditya.mishra30@example.com', '9000000030', 'Indore');

SELECT COUNT(*) AS total_users from users ;

INSERT INTO income
(user_id, amount, income_source, income_date)
VALUES
(1, 12000.00, 'Salary', '2026-10-01'),
(2, 15000.00, 'Salary', '2026-10-02'),
(3, 2000.00, 'Tuition', '2026-10-03'),
(4, 18000.00, 'Salary', '2026-10-04'),
(5, 3500.00, 'Freelancing', '2026-10-05'),
(6, 14000.00, 'Salary', '2026-10-06'),
(7, 5000.00, 'Business', '2026-10-07'),
(8, 22000.00, 'Salary', '2026-10-08'),
(9, 2500.00, 'Tuition', '2026-10-09'),
(10, 16000.00, 'Salary', '2026-10-10');

INSERT INTO income
(user_id, amount, income_source, income_date)
VALUES
(11, 18000.00, 'Salary', '2026-10-11'),
(12, 12500.00, 'Salary', '2026-10-12'),
(13, 3000.00, 'Tuition', '2026-10-13'),
(14, 16000.00, 'Salary', '2026-10-14'),
(15, 4500.00, 'Freelancing', '2026-10-15'),
(16, 14000.00, 'Salary', '2026-10-16'),
(17, 2500.00, 'Tuition', '2026-10-17'),
(18, 20000.00, 'Salary', '2026-10-18'),
(19, 13500.00, 'Salary', '2026-10-19'),
(20, 17000.00, 'Business', '2026-10-20'),
(21, 15000.00, 'Salary', '2026-10-11'),
(22, 3500.00, 'Freelancing', '2026-10-12'),
(23, 19000.00, 'Salary', '2026-10-13'),
(24, 12000.00, 'Salary', '2026-10-14'),
(25, 2800.00, 'Tuition', '2026-10-15'),
(26, 16500.00, 'Salary', '2026-10-16'),
(27, 5000.00, 'Business', '2026-10-17'),
(28, 14500.00, 'Salary', '2026-10-18'),
(29, 3200.00, 'Freelancing', '2026-10-19'),
(30, 21000.00, 'Salary', '2026-10-20');


SELECT COUNT(*) FROM income ;


USE expense_debt_tracker;

INSERT INTO expenses
(user_id, amount, category, expense_date, payment_method)
VALUES
-- User 1
(1, 500.00, 'Petrol', '2026-10-01', 'UPI'),
(1, 1200.00, 'Groceries', '2026-10-05', 'Cash'),

-- User 2
(2, 2500.00, 'Shopping', '2026-10-02', 'UPI'),
(2, 800.00, 'Food', '2026-10-06', 'Cash'),

-- User 3
(3, 1500.00, 'Rent', '2026-10-03', 'Bank Transfer'),
(3, 300.00, 'Food', '2026-10-07', 'UPI'),

-- User 4
(4, 600.00, 'Petrol', '2026-10-04', 'UPI'),
(4, 900.00, 'Electricity Bill', '2026-10-08', 'UPI'),

-- User 5
(5, 2000.00, 'Shopping', '2026-10-05', 'Card'),
(5, 450.00, 'Food', '2026-10-09', 'Cash'),

-- User 6
(6, 700.00, 'Petrol', '2026-10-06', 'Cash'),
(6, 1300.00, 'Groceries', '2026-10-10', 'UPI'),

-- User 7
(7, 1800.00, 'Rent', '2026-10-07', 'Bank Transfer'),
(7, 250.00, 'Food', '2026-10-11', 'UPI'),

-- User 8
(8, 1200.00, 'Petrol', '2026-10-08', 'UPI'),
(8, 2200.00, 'Shopping', '2026-10-12', 'Card'),

-- User 9
(9, 400.00, 'Food', '2026-10-09', 'Cash'),
(9, 1000.00, 'Groceries', '2026-10-13', 'UPI'),

-- User 10
(10, 3000.00, 'Rent', '2026-10-10', 'Bank Transfer'),
(10, 650.00, 'Petrol', '2026-10-14', 'UPI'),

-- User 11
(11, 850.00, 'Groceries', '2026-10-11', 'UPI'),
(11, 500.00, 'Food', '2026-10-15', 'Cash'),

-- User 12
(12, 1200.00, 'Electricity Bill', '2026-10-12', 'UPI'),
(12, 750.00, 'Petrol', '2026-10-16', 'Cash'),

-- User 13
(13, 950.00, 'Shopping', '2026-10-13', 'Card'),
(13, 350.00, 'Food', '2026-10-17', 'UPI'),

-- User 14
(14, 500.00, 'Petrol', '2026-10-14', 'UPI'),
(14, 1400.00, 'Groceries', '2026-10-18', 'Cash'),

-- User 15
(15, 2500.00, 'Rent', '2026-10-15', 'Bank Transfer'),
(15, 450.00, 'Food', '2026-10-19', 'Cash'),

-- User 16
(16, 600.00, 'Petrol', '2026-10-16', 'UPI'),
(16, 1100.00, 'Shopping', '2026-10-20', 'Card'),

-- User 17
(17, 300.00, 'Food', '2026-10-17', 'Cash'),
(17, 900.00, 'Groceries', '2026-10-21', 'UPI'),

-- User 18
(18, 3200.00, 'Rent', '2026-10-18', 'Bank Transfer'),
(18, 800.00, 'Petrol', '2026-10-22', 'UPI'),

-- User 19
(19, 700.00, 'Electricity Bill', '2026-10-19', 'UPI'),
(19, 400.00, 'Food', '2026-10-22', 'Cash'),

-- User 20
(20, 1300.00, 'Groceries', '2026-10-20', 'UPI'),
(20, 550.00, 'Petrol', '2026-10-22', 'Cash'),

-- User 21
(21, 1800.00, 'Shopping', '2026-10-21', 'Card'),
(21, 450.00, 'Food', '2026-10-22', 'UPI'),

-- User 22
(22, 650.00, 'Petrol', '2026-10-21', 'UPI'),
(22, 1000.00, 'Groceries', '2026-10-22', 'Cash'),

-- User 23
(23, 2800.00, 'Rent', '2026-10-21', 'Bank Transfer'),
(23, 350.00, 'Food', '2026-10-22', 'Cash'),

-- User 24
(24, 900.00, 'Electricity Bill', '2026-10-21', 'UPI'),
(24, 600.00, 'Petrol', '2026-10-22', 'UPI'),

-- User 25
(25, 450.00, 'Food', '2026-10-21', 'Cash'),
(25, 1500.00, 'Shopping', '2026-10-22', 'Card'),

-- User 26
(26, 750.00, 'Petrol', '2026-10-21', 'UPI'),
(26, 1250.00, 'Groceries', '2026-10-22', 'Cash'),

-- User 27
(27, 1600.00, 'Rent', '2026-10-21', 'Bank Transfer'),
(27, 300.00, 'Food', '2026-10-22', 'UPI'),

-- User 28
(28, 500.00, 'Petrol', '2026-10-21', 'Cash'),
(28, 850.00, 'Shopping', '2026-10-22', 'UPI'),

-- User 29
(29, 400.00, 'Food', '2026-10-21', 'UPI'),
(29, 950.00, 'Groceries', '2026-10-22', 'Cash'),

-- User 30
(30, 2200.00, 'Rent', '2026-10-21', 'Bank Transfer'),
(30, 700.00, 'Petrol', '2026-10-22', 'UPI');

INSERT INTO debts
(user_id, person_name, amount, debt_type, debt_date, due_date, status)
VALUES
(1, 'Rahul', 5000.00, 'Borrowed', '2026-10-01', '2026-11-01', 'pending'),
(2, 'Amit', 2000.00, 'Lent', '2026-10-02', '2026-10-25', 'pending'),
(3, 'Rohit', 1500.00, 'Borrowed', '2026-10-03', '2026-10-30', 'received'),
(4, 'Vijay', 3000.00, 'Lent', '2026-10-04', '2026-11-04', 'pending'),
(5, 'Sahil', 1000.00, 'Borrowed', '2026-10-05', '2026-10-20', 'pending'),
(6, 'Karan', 4500.00, 'Lent', '2026-10-06', '2026-11-06', 'received'),
(7, 'Mohit', 2500.00, 'Borrowed', '2026-10-07', '2026-10-27', 'pending'),
(8, 'Ankit', 1800.00, 'Lent', '2026-10-08', '2026-11-08', 'pending'),
(9, 'Deepak', 3500.00, 'Borrowed', '2026-10-09', '2026-11-09', 'received'),
(10, 'Nikhil', 2200.00, 'Lent', '2026-10-10', '2026-11-10', 'pending');

INSERT INTO debts
(user_id, person_name, amount, debt_type, debt_date, due_date, status)
VALUES
(11, 'Arjun', 3200.00, 'Borrowed', '2026-10-11', '2026-11-11', 'pending'),
(12, 'Varun', 1800.00, 'Lent', '2026-10-12', '2026-11-12', 'received'),
(13, 'Manish', 4200.00, 'Borrowed', '2026-10-13', '2026-11-13', 'pending'),
(14, 'Suresh', 2500.00, 'Lent', '2026-10-14', '2026-11-14', 'pending'),
(15, 'Pankaj', 1500.00, 'Borrowed', '2026-10-15', '2026-11-15', 'received'),
(16, 'Gaurav', 3800.00, 'Lent', '2026-10-16', '2026-11-16', 'pending'),
(17, 'Rajat', 2700.00, 'Borrowed', '2026-10-17', '2026-11-17', 'pending'),
(18, 'Nitin', 1200.00, 'Lent', '2026-10-18', '2026-11-18', 'received'),
(19, 'Akash', 5500.00, 'Borrowed', '2026-10-19', '2026-11-19', 'pending'),
(20, 'Yash', 2300.00, 'Lent', '2026-10-20', '2026-11-20', 'pending'),
(21, 'Harsh', 1600.00, 'Borrowed', '2026-10-11', '2026-11-21', 'received'),
(22, 'Sumit', 4100.00, 'Lent', '2026-10-12', '2026-11-22', 'pending'),
(23, 'Ravi', 2900.00, 'Borrowed', '2026-10-13', '2026-11-23', 'pending'),
(24, 'Ajay', 1900.00, 'Lent', '2026-10-14', '2026-11-24', 'received'),
(25, 'Kunal', 3600.00, 'Borrowed', '2026-10-15', '2026-11-25', 'pending'),
(26, 'Sachin', 1400.00, 'Lent', '2026-10-16', '2026-11-26', 'pending'),
(27, 'Abhishek', 4800.00, 'Borrowed', '2026-10-17', '2026-11-27', 'received'),
(28, 'Tarun', 2100.00, 'Lent', '2026-10-18', '2026-11-28', 'pending'),
(29, 'Prateek', 3300.00, 'Borrowed', '2026-10-19', '2026-11-29', 'pending'),
(30, 'Dev', 1700.00, 'Lent', '2026-10-20', '2026-11-30', 'received');


