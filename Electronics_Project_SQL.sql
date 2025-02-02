# Which country is the leading in sales?
# quantity sold per Country
select count(quantity) as Quantity_Sold, country 
	from sales as s 
	join stores as t 
	on s.StoreKey = t.StoreKey 
	group by country
    order by Quantity_Sold Desc;

# How to query every piece of information from a specific product?
# selecting data directly from the name
select * from products where product_name ='Adventure Works Desktop PC2.30 MD230 Black';

# What is the top seller?
# top product name sold
select Product_Name,
 SUM(s.quantity * p.Unit_price) as Value_from_Sales
 from products as p join sales as s
 on p.ProductKey = s.ProductKey
 group by Product_name;

# Is gender a relevant parameter for sales?
#total user of genders
select count(gender) as Total_Users, gender from customers group by gender;

#/-----------------------------------------------------------------------------------/#
#funny fact people born on a peculiar date
select count(name), birthday from customers where birthday like '2/29/%' group by birthday;


