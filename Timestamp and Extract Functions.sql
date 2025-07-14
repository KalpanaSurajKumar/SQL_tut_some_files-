-- Timestamp Functions
-- 1. SHOW TIMEZONE
SELECT @@global.time_zone;

-- 2. SELECT NOW()
SELECT NOW()
-- 3. SELECT TIMEOFDAY()
SELECT TIMEOFDAY();
SELECT CURRENT_TIME();

-- 4. SELECT CURRENT_TIME
SELECT CURRENT_TIME;
SELECT CURRENT_DATE();
-- 5. SELECT CURRENT_DATE
SELECT CURRENT_DATE;
SELECT CURRENT_DATE();


-- Extract Function
SELECT EXTRACT(MONTH FROM payment_date) AS Pay_Month,payment_date
FROM accounts;

SELECT EXTRACT(MONTH FROM STR_TO_DATE(payment_date, '%d-%m-%Y')) AS Pay_Month, payment_date 
FROM accounts;



-- SELECT EXTRACT(DAY FROM STR_TO_DATE(payment_date, '%d-%m-%Y')) AS Pay_Month, payment_date 
-- FROM accounts;

-- SELECT EXTRACT(QUARTER FROM STR_TO_DATE(payment_date,'%d-%m-%Y')) AS Pay_quar,payment_date
-- FROM accounts;

-- SELECT WEEKDAY(STR_TO_DATE(payment_date, '%d-%m-%Y')) AS Week_Day, payment_date
-- FROM accounts;





-- To select month from the table
SELECT EXTRACT(MONTH FROM str_to_date(payment_date,'%d-%m-%Y')) AS Month_date,payment_date
FROM accounts;

-- To select date from the table
SELECT EXTRACT(MONTH FROM STR_TO_DATE(payment_date,'%d-%m-%Y')) AS DATY,payment_date
FROM accounts;

-- To select year from the table
SELECT EXTRACT(YEAR FROM STR_TO_DATE(payment_date,'%d-%m-%Y')) AS yearly,payment_date 
FROM accounts;

-- To select day of the week
SELECT WEEKDAY( STR_TO_DATE(payment_date,'%d-%m-%Y')) AS dayer,payment_date
FROM accounts;

-- To select QUARTER 
SELECT EXTRACT(QUARTER FROM str_to_date(payment_date,'%d-%m-%Y')) AS d_quar,payment_date
FROM accounts; 

