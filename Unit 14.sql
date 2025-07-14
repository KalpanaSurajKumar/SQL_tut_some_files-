-- Self join ,Union ,Union all
SELECT * FROM classroom;

-- Self Join
SELECT *
FROM classroom AS T1
JOIN classroom AS T2
ON T2.rollno = T1.st_id;


-- Union 
SELECT customer_id
FROM Accounts
UNION 
SELECT customer_id
FROM customer;

-- Union all

SELECT customer_id
FROM Accounts
UNION ALL
SELECT customer_id 
FROM customer;