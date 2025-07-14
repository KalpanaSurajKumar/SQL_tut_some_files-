-- Case Statement in SQL
SELECT *,
CASE
WHEN amount>55 THEN 'Expensive_price'
WHEN amount = 55 THEN 'SAME_PRICE'
ELSE 'Less_Expensive'
END AS Show_status
FROM accounts;





-- Case Expression

SELECT customer_id,amount,
CASE amount 
WHEN 55 THEN 'Prime_Customer'
WHEN 45 THEN 'Plus_Customer'
ELSE 'Reg_Customer'
END AS Cust_Status
FROM accounts; 


-- Case Statement 
SELECT customer_id,amount ,
CASE
WHEN amount>55 THEN 'More_Expensive'
WHEN amount = 55 THEN 'Moderate_Expensive'
ELSE 'Less_Expensive'
END AS 'Amount_Status'
FROM accounts;




-- Case Expression
SELECT customer_id,amount,
CASE amount
WHEN 55 THEN 'Moderate_Expensive'
WHEN 45 THEN 'Less_Expensive'
ELSE 'More_Expensive'
END AS 'Amount_Expensive'
FROM accounts;