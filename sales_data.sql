-- see the overall dataset
select * 
from sales_database..raw_data$;

-- count total material sold
select count([Material Number]) as 'Total Material Sold'
from sales_database..raw_data$;

-- count the material sold by year
select year,count(year) 
from sales_database..raw_data$
group by year
order by count(year) desc;

-- count the material sold by brand
select brand,count(brand) 
from sales_database..raw_data$
group by brand
order by count(brand) desc;

-- count the material sold by client type
select [Client Type],count([Client Type]) 
from sales_database..raw_data$
group by [Client Type]
order by count([Client Type]) desc;

-- count the material sold by client type
select [Client Type],count([Client Type]) 
from sales_database..raw_data$
group by [Client Type]
order by count([Client Type]) desc;

-- count the material sold by client
select Client,count(Client) 
from sales_database..raw_data$
group by Client
order by count(Client) desc;

-- calculate total volume
select sum(Volume) as 'Total Volume'
from sales_database..raw_data$;
