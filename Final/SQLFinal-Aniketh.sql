create database if not exists pvfc;

use pvfc;


-- 1) 	Write SQL statement to find Number of customers living in state ‘FL’
select  customerstate,count(customerstate)  as " no.of customers" from customer_t where customerstate = 'FL';


-- 2)Write SQL statement to find number of customers by State for all states sorted by alphabetical order of state (A-Z)
 select  customerstate as State, count(customerstate)  as  "no.of customers"
 from customer_t 
group by customerstate
order by customerstate;


 
-- 3)	Write SQL query to get following dataset for Territory = ‘Central’ : SALESPERSONNAME, SALESPERSONPHONE, TERRITORYID

  select salesperson_t.SALESPERSONNAME, salesperson_t.SALESPERSONPHONE, territory_t.TERRITORYID 
  from salesperson_t join territory_t on salesperson_t.TERRITORYID=territory_t.TERRITORYID 
  where territory_t.territoryname='Central';



	-- 4)Write SQL query to get Customer Name, Customer Address for Order Id 1005


SELECT customer_t.CUSTOMERNAME, customer_t.CUSTOMERADDRESS from 
customer_t join order_t on customer_t.CUSTOMERID =order_t.CUSTOMERID where orderid='1005';



-- 5.	Write SQL to Create a view with following columns from product table PRODUCTDESCRIPTION, PRODUCTFINISH where Productdescription contains word ‘Table’.
 create view Q5 
 as select PRODUCTDESCRIPTION , PRODUCTFINISH from product_t
 where Productdescription like '%Table%';


-- 6.	Alter table customer_t to add customerphonenumber, customeremail as columns
alter table pvfc.customer_t
add (CUSTOMERPHONENUMBER VARCHAR(255), CUSTOMEREMAIL VARCHAR(255));

select * from customer_t;



