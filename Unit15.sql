-- Subquery
-- using simple method
SELECT AVG(amount)
FROM Accounts;

SELECT * 
FROM Accounts
WHERE amount>57;

-- Now using the subquery 
SELECT *
FROM Accounts
WHERE amount>(SELECT AVG(amount) FROM accounts);


-- find the Third highest amount

SELECT MAX(amount) FROM  Accounts
WHERE amount<(SELECT max(amount)FROM  Accounts

WHERE  amount< (SELECT MAX(amount)from Accounts)) ;


-- Finding  any number of the highest salary
SELECT * FROM 
    (SELECT amount, DENSE_RANK() OVER (ORDER BY amount DESC) AS serial_number FROM Accounts) AS ranked_accounts 
WHERE serial_number = 5;







