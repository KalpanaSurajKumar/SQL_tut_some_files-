-- Numeric Functions
select * from accounts;
-- 1 abs()
SELECT abs(-100);
-- 2 ceil()
SELECT CEIL(4.2);

-- 3 floor()
SELECT floor(3.9);

-- 4 mod()
SELECT MOD(25,4);


-- 5 ROUND() 
SELECT ROUND(3.9);

-- 6 pi()
SELECT PI(); 

-- 7 truncate()
SELECT TRUNCATE(23.2453535,2) ;

-- 8. RAND()
SELECT FLOOR(RAND()*1000);

-- 9 POWER()
SELECT POWER(2,2);

-- 10 TRIGONEMTRIC FUNCTIONS
SELECT SIN(90),COS(90),TAN(90);

-- 11 SQRT()
SELECT SQRT(64);

-- 12 GREATEST()
SELECT GREATEST(24,30,21,43,100);

-- 13 LEAST()
SELECT LEAST(20,34,40,48);