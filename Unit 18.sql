-- Common Table Expression 
SELECT * FROM accounts;
SELECT * FROM customer;


WITH
cte_table AS ( SELECT mode, MAX(amount) AS highest_price , SUM(amount)
AS total_price
FROM accounts
GROUP BY mode
)
SELECT accounts.*, my.highest_price , my.total_price
FROM accounts
JOIN cte_table my
ON accounts.mode = my.mode











