 USE expense_debt_tracker;

-- Q: Display each user's total income, expenses, and debt

SELECT
    u.user_id,
    u.name,
    COALESCE(i.total_income, 0) AS total_income,
    COALESCE(e.total_expense, 0) AS total_expense,
    COALESCE(d.total_debt, 0) AS total_debt

FROM users AS u

LEFT JOIN (
    SELECT
        user_id,
        SUM(amount) AS total_income
    FROM income
    GROUP BY user_id
) AS i
    ON u.user_id = i.user_id

LEFT JOIN (
    SELECT
        user_id,
        SUM(amount) AS total_expense
    FROM expenses
    GROUP BY user_id
) AS e
    ON u.user_id = e.user_id

LEFT JOIN (
    SELECT
        user_id,
        SUM(amount) AS total_debt
    FROM debts
    GROUP BY user_id
) AS d
    ON u.user_id = d.user_id

ORDER BY u.user_id;