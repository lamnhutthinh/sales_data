-- See the overall dataset
select * 
from sales_database..raw_data$;

-- Count total material sold
select count([Material Number]) as 'Total Material Sold'
from sales_database..raw_data$;

-- Count the material sold by year
select year,count(year) as 'Material Sold'
from sales_database..raw_data$
group by year
order by count(year) desc;

-- Count the material sold by brand
select brand,count(brand) as 'Material Sold'
from sales_database..raw_data$
group by brand
order by count(brand) desc;

-- Count the material sold by client type
select [Client Type],count([Client Type]) as 'Material Sold'
from sales_database..raw_data$
group by [Client Type]
order by count([Client Type]) desc;

-- Calculate total volume
select sum(Volume) as 'Total Volume'
from sales_database..raw_data$;

-- Calculate volume by year
select year,sum(Volume) as 'Volume'
from sales_database..raw_data$
group by year
order by sum(Volume) desc;

-- Calculate volume by brand
select brand,sum(Volume) as 'Volume'
from sales_database..raw_data$
group by brand
order by sum(Volume) desc;

-- Calculate volume by brand and client type
select brand,[Client Type],sum(Volume) as 'Volume'
from sales_database..raw_data$
group by brand,[Client Type]
order by brand,sum(volume) desc;

-- Calculate volume by brand and size
select brand,size,sum(Volume) as 'Volume'
from sales_database..raw_data$
group by brand,size
order by brand,sum(Volume) desc;

-- Calculate net sales by month
select year, month, sum([Net Sales])
from sales_database..raw_data$
group by year, month
order by year, month;

-- Sort net sales by month from largest to smallest
select year, month, sum([Net Sales])
from sales_database..raw_data$
group by year, month
order by sum([Net Sales]);

-- Calculate Gross Profit by brand
select brand, (sum([Net Sales])+sum([Cost of Goods Sold])) as [Gross Profit]
from sales_database..raw_data$
group by brand
order by [Gross Profit] desc;

-- Calculate Gross Profit Proportion by brand
select brand, (sum([Net Sales])+sum([Cost of Goods Sold]))/sum([Net Sales]) as [Gross Profit Proportion]
from sales_database..raw_data$
group by brand
order by [Gross Profit Proportion] desc;


