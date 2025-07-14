-- Inner joins
SELECT * 
FROM customer AS c
INNER JOIN  accounts AS a
ON c.customer_id = a.customer_id;

-- Left joins
SELECT *
FROM customer AS c
LEFT JOIN accounts AS a
ON c.customer_id = a.customer_id;

-- Right joins
SELECT *
FROM customer AS c
RIGHT JOIN accounts AS a
ON c.customer_id = a.customer_id;


-- Full joins
SELECT * 
FROM customer AS c
LEFT JOIN accounts AS a
ON c.customer_id = a.customer_id


UNION

SELECT * 
FROM customer AS c
RIGHT JOIN accounts AS a
ON c.customer_id = a.customer_id;



