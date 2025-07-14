select * from accounts;
-- Aggregiate functions in SQL
-- 1.AMOUNT() function
select count(amount) from accounts;

-- 2.SUM() Function
select sum(amount) from accounts ;

-- 3.AVG() Function
select round(avg(amount),1) from accounts;

-- 4. MAX() Function
select max(amount) from accounts;

-- 5. MIN() Function
select min(amount) from accounts;