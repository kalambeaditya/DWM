# DWM
use AllElectronics;<br>
show tables;<br>
select * from purchases join employee on employee.empl_id = purchases.empl_id order by purchases.empl_id;<br><br>

select * from item;<br>
select * from items_sold;<br>
select * from employee order by empl_id;<br>
alter table purchases modify date_purchases varchar(50);<br>
show tables;<br>
<br>
drop database AllElectronics;<br>
<br>
select item.name as "Name Of The Items"<br>
from item<br>
join  items_sold<br>
join purchases<br>
on item.item_id = items_sold.item_id and purchases.trans_id = items_sold.trans_id <br>
and purchases.date_purchases between '2021-08-01' and '2021-12-31';<br>
<br>
select count(date_purchases) as "Number Of Items Purchases In December"<br>
from purchases<br>
where date_purchases like "%-12-%";<br>
<br>
<br>
select employee.name as "name of employee" , avg(purchases.amount) as "avarage amount"<br>
from employee<br>
join purchases on<br>
employee.empl_id = purchases.empl_id;<br>
