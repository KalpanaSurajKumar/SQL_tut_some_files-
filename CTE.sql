-- Common Table Expression
 SELECT * 
 FROM accounts;
 
 SELECT *
 FROM customer;

 
 
 
 with ask as (
 SELECT mode,avg(amount) as 'average_price',max(amount) as 'max_price'
 from accounts
 group by mode
 )
 
 select *
 from accounts
 join ask  my
 on accounts.mode = my.mode;

 
 