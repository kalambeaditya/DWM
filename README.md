# DWM
use AllElectronics;
show tables;
select * from purchases join employee on employee.empl_id = purchases.empl_id order by purchases.empl_id;

select * from item;
select * from items_sold;
select * from employee order by empl_id;
alter table purchases modify date_purchases varchar(50);
show tables;

drop database AllElectronics;

select item.name as "Name Of The Items"
from item
join  items_sold
join purchases
on item.item_id = items_sold.item_id and purchases.trans_id = items_sold.trans_id 
and purchases.date_purchases between '2021-08-01' and '2021-12-31';

select count(date_purchases) as "Number Of Items Purchases In December"
from purchases
where date_purchases like "%-12-%";


select employee.name as "name of employee" , avg(purchases.amount) as "avarage amount"
from employee
join purchases on
employee.empl_id = purchases.empl_id;
