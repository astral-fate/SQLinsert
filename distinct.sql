/*
Use DISTINCT to test if there are any accounts associated with more than one region.
*/
select distinct count(a.name) as multAccounts
from accounts as a
join sales_reps s
on s.id=a.sales_rep_id
join region r
on r.id=s.region_id;

select distinct count(s.name) as multAccounts
from accounts as a
join sales_reps s
on s.id=a.sales_rep_id
