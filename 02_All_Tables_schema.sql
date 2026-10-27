 -- =====================================================
-- PERSONAL EXPENSE AND DEBT TRACKER
-- File: 01_Create_Tables.sql
-- Purpose: Create database and table schema
-- =====================================================


-- 1. CREATE DATABASE

CREATE DATABASE IF NOT EXISTS Expenses_and_dept_tracker;

USE Expenses_and_dept_tracker;


-- =====================================================
-- 2. USERS TABLE
-- Stores information about users
-- =====================================================

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    city VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- =====================================================
-- 3. INCOME TABLE
-- Stores income records for each user
-- =====================================================

CREATE TABLE income (
    income_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    income_source VARCHAR(50) NOT NULL,
    income_date DATE NOT NULL,

    CONSTRAINT chk_income_amount
        CHECK (amount > 0),

    CONSTRAINT fk_income_users
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- =====================================================
-- 4. EXPENSES TABLE
-- Stores expense records for each user
-- =====================================================

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    category VARCHAR(50) NOT NULL,
    expense_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,

    CONSTRAINT chk_expense_amount
        CHECK (amount > 0),

    CONSTRAINT fk_expenses_users
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- =====================================================
-- 5. DEBTS TABLE
-- Stores borrowed and lent money records
-- =====================================================

CREATE TABLE debts (
    debt_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    debt_type ENUM('Borrowed', 'Lent') NOT NULL,
    debt_date DATE NOT NULL,
    due_date DATE,
    status ENUM('pending', 'received') NOT NULL DEFAULT 'pending',

    CONSTRAINT chk_debt_amount
        CHECK (amount > 0),

    CONSTRAINT fk_debts_users
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


-- =====================================================
-- 6. VERIFY TABLES
-- =====================================================

SHOW TABLES;

DESCRIBE users;
DESCRIBE income;
DESCRIBE expenses;
DESCRIBE debts;