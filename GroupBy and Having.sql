-- 1 
select  * from accounts;
select mode , count(amount) as no_of_amount from accounts
group by mode 
having no_of_amount> 3
order by no_of_amount  asc;

-- 2
select mode,count(customer_id) as Total from accounts 
group by mode 
order by Total;

