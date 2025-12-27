show tables;
-- displaying and loading the tables


select *
from customers;
select *
from inventory;
select *
from products;
select *
from quality_issues;
select *
from sales;
select *
from suppliers;

-- starting the data cleaaning process table 1 is the customers table
-- starting by duplicating the process of the customers table
create table customers2
select *
from customers;
select *
from customers2;

select *,
ROW_NUMBER() over(partition by customer_id,customer_name,region,customer_type) as row_num
from customers2;
 -- Checking for dupicates using duplicate cte
 
 with duplicate_cte as(
 select *,
ROW_NUMBER() over(partition by customer_id,customer_name,region,customer_type) as row_num
from customers2
)
select *
from duplicate_cte
where row_num>1;

-- no duplicates present. Thus creating the primary key
alter table  customers2
add primary key(customer_id);
update customers2
set customer_name=trim(customer_name);
select customer_name
from customers2;

select customer_name,
replace(customer_name,"_"," ")
from customers2;

Update customers2
set customer_name=replace(customer_name,"_"," ");

select *
from customers2
where customer_name is NULL;
 
 -- no null values in the customers id table
 
 update customers2
 set region=trim(region);
 select *
from customers2;
update customers2
 set customer_type=trim(customer_type);
 
 -- moving on to the second tabe the in ventory table
select *
from inventory;
Create table inventory2
select *
from inventory; 
select *
from inventory2;
 -- looking for duplicates
 select *,
 ROW_NUMBER() over(partition by inventory_id,product_id,supplier_id,stock_quantity,expiry_date) as row_num
 from inventory2;
 
 -- using duplicate_cte to find out if there are duplicates
 with duplicate_cte as (
 select *,
 ROW_NUMBER() over(partition by inventory_id,product_id,supplier_id,stock_quantity,expiry_date) as row_num
 from inventory2
 )
 select *
 from duplicate_cte
 where row_num>1;
 -- zero duplicates. Creating the primary key
 alter table inventory2
 add primary key(inventory_id);
 update inventory2
 set inventory_id=trim(inventory_id);
 select *
 from inventory2
 where inventory_id is null;
 update inventory2
 set product_id=trim(product_id);
 select *
 from inventory2
 where product_id is null;
 update inventory2
 set supplier_id=trim(supplier_id);
 select *
 from inventory2
 where supplier_id is null;
  update inventory2
 set stock_quantity=trim(stock_quantity);
  select *
 from inventory2
 where stock_quantity is null;
select *,
str_to_date(expiry_date,'%Y-%m-%d') as new_date
from inventory2;
 update inventory2
 set expiry_date=str_to_date(expiry_date,'%Y-%m-%d')
;
SELECT *
FROM products;

-- checking for nulls and duplicates
create table products2
select *
FROM products;
select *
from products2;

select *,
ROW_NUMBER() over(partition by product_id,product_name,category,unit_price) as row_num
from products2;
 -- using duplicate_cte to find out if there are duplicates
 with duplicate_cte as (
select *,
ROW_NUMBER() over(partition by product_id,product_name,category,unit_price) as row_num
from products2
)
select *
from duplicate_cte
where row_num>1; 
-- there are no duplicates looking for nulls in order to make the primary key
alter table products2
add primary key(product_id);

update products2
set product_name=trim(product_name);
select DISTINCT(product_name)
from products2;
select product_name,
replace(product_name,'_',' ') as new_name
from products2;
update products2
set product_name=replace(product_name,'_',' ');
select *
from products2;
update products2
set category=trim(category);
select count(category) as frequency_category,category
from products2
GROUP BY category
Order by frequency_category;
-- moving on to the quality issues table
select *
from quality_issues;
create table quality_issues2
select *
from quality_issues;
select *
from quality_issues2;
-- checking for duplicates in the quaity_issues table
select *,
row_number() over(partition by issue_id,product_id,issue_type,reported_date) as row_num
from quality_issues2;
with duplicate_cte as (
select *,
row_number() over(partition by issue_id,product_id,issue_type,reported_date) as row_num
from quality_issues2
)
select *
from duplicate_cte
where row_num>1;
-- no duplicates present in the quality table. Looking for nulls and then craeting primary key
select issue_id
from quality_issues2
where issue_id is NULL; -- NO NULL
ALTER TABLE quality_issues2
ADD PRIMARY KEY(issue_id);
select *
from quality_issues2;
update quality_issues2
set product_id=trim(product_id);
-- checking for any problems in the issue_type column
select count(issue_type) as counted_issue,issue_type
from quality_issues2
GROUP BY issue_type
order by counted_issue;-- no spelling error
-- moving to the last column
select reported_date,
str_to_date(reported_date,'%Y-%m-%d') as new_date
from quality_issues2;
update quality_issues2
set reported_date=str_to_date(reported_date,'%Y-%m-%d');


-- moving to the sales table
select *
from sales;
create table sales2
select *
from sales;

select *
from sales2;
-- checking for duplicates
select *,
row_number() over(partition by sale_id,sale_date,customer_id,product_id,quantity) as row_num
from sales2;

with duplicate_cte as(
select *,
row_number() over(partition by sale_id,sale_date,customer_id,product_id,quantity) as row_num
from sales2
)
select *
from duplicate_cte
where row_num>1;

alter table sales2
add primary key(sale_id);

update sales2
set sale_id=trim(sale_id);
select sale_date,
str_to_date(sale_date,'%Y-%m-%d')
from sales2;
update sales2
set sale_date=str_to_date(sale_date,'%Y-%m-%d');
update sales2
set customer_id=trim(customer_id);
update sales2
set product_id=trim(product_id);
update sales2
set quantity=trim(quantity);

-- moving on to the suppliers table
select *
from suppliers;
create table suppliers2
 select *
from suppliers;
select *
from suppliers2;

select *,
ROW_NUMBER() over(partition by supplier_id,supplier_name,country)as row_num
from suppliers2;
with duplicate_cte as (
select *,
ROW_NUMBER() over(partition by supplier_id,supplier_name,country)as row_num
from suppliers2
)
select *
from duplicate_cte
where row_num>1;
update suppliers2
set supplier_id=trim(supplier_id);
alter TABLE suppliers2
add PRIMARY KEY(supplier_id);
select supplier_name,
replace(supplier_name,'_',' ')
from suppliers2;

update suppliers2
set supplier_name=replace(supplier_name,'_',' ');
update suppliers2
set supplier_name=trim(supplier_name);
select count(country) as num_of_country,country
from suppliers2
GROUP BY country;
update suppliers2
set country=trim(country);
select *
from suppliers2;

-- cleaning of the data is done. Now we have to form relationships between the tables
SELECT *
from customers2;
SELECT *
from inventory2;
SELECT *
from products2;
SELECT *
from quality_issues2;
SELECT *
from sales2;
SELECT *
from suppliers2;

alter table sales2
add FOREIGN KEY(customer_id)
REFERENCES customers2(customer_id);
alter table inventory2
add FOREIGN KEY(product_id)
REFERENCES products2(product_id);
alter table inventory2
add FOREIGN KEY(supplier_id)
REFERENCES suppliers2(supplier_id);
alter table sales2
add FOREIGN KEY(product_id)
REFERENCES products2(product_id);
alter table quality_issues2
add FOREIGN KEY(product_id)
REFERENCES products2(product_id);

-- looking at the number of suppliers from eah country
select count(supplier_name)as counted_supplier,country
from suppliers2
GROUP BY country;

-- what category of products we have
select count(product_name) as counted_category,category
from products2
group by category;
-- tOtal amount amount of money paid by each custome
select A.product_id,A.category,B.customer_id,(A.unit_price*B.quantity) as amount_paid
from products2 as A
JOIN sales2 AS B ON A.product_id=B.product_id;

-- total amount of money brought from each category
select count(A.product_id) as product_count,A.category,count(B.customer_id) as id_count ,sum(A.unit_price*B.quantity) as amount_paid
from products2 as A
JOIN sales2 AS B ON A.product_id=B.product_id
group by A.category;
SELECT *
from customers2;
SELECT *
from inventory2;
SELECT *
from products2;
SELECT *
from quality_issues2;
SELECT *
from sales2;
SELECT *
from suppliers2;
-- we want to know what product each supplier supplied
select C.supplier_id,A.product_id,A.product_name,A.category,B.inventory_id,C.country
From inventory2 as B
join products2 as A ON B.product_id=A.product_id
JOIN suppliers2 AS C ON B.supplier_id=C.supplier_id;

-- HOW MANY SUPPLIERS PROVIDED A CERTAIN CATEGORY OF MEDICINE
select COUNT(C.supplier_id) AS no_of_suppliers,COUNT(A.product_name) as no_of_products,A.category,COUNT(B.inventory_id) as products_in_inventory
From inventory2 as B
join products2 as A ON B.product_id=A.product_id
JOIN suppliers2 AS C ON B.supplier_id=C.supplier_id
GROUP BY A.category;

-- finding out if any supplier did not supply anything
 select * 
 from suppliers2
 where supplier_id not in(select supplier_id
						from inventory2);
 -- So supplier 30 did not supply anything thus found out using the sub query        
 -- looking at what region  brought the most income
 -- first we have to see how many regions we have in the customers id
 select count(region) as counted_region,region
 from customers2
 GROUP BY region;
 select count(A.customer_id) as no_id,count(A.customer_name) as no_customers,A.region,A.customer_type,sum(C.unit_price*B.quantity) as total_amount
 from sales2 as B
 JOIN products2 AS C on B.product_id=C.product_id
 join customers2 as A ON B.customer_id=A.customer_id
 GROUP BY A.region,A.customer_type;
 -- total amount of revenue brought in each region
  select count(A.customer_id) as no_id,count(A.customer_name) as no_customers,A.region,sum(C.unit_price*B.quantity) as total_amount
 from sales2 as B
 JOIN products2 AS C on B.product_id=C.product_id
 join customers2 as A ON B.customer_id=A.customer_id
 GROUP BY A.region;
 -- 
 
 
