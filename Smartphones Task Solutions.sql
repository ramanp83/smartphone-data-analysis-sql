-- 1. Display All records
select *
from smartphones;

select *
from emp_db_35.smartphones;

-- 2. Display model, price and rating
SELECT model, price, rating
FROM smartphones;

-- 3. display os as Operating system, model, battery_capacity
 
select os as "Operating system" , model, battery_capacity
from smartphones;

-- 4. Display unique values of brands of smartphones
select distinct (brand_name) 
from smartphones;

-- 5. Display records of all Samsung smartphones
select * from smartphones 
where brand_name = 'samsung';

-- 6. Display records of all Samsung smartphones whose price is more than 1 lakh
select * from smartphones 
where brand_name = "Samsung" and price > 100000;

-- 7. Display records of all Samsung smartphones whose price lies between 10k to 20k
select * from smartphones 
where brand_name = "Samsung" and price >= 10000 and price <= 20000;

select * from smartphones 
where brand_name = "Samsung" and price between 10000 and 20000; 

-- 8. Display records of all Samsung smartphones whose price less than 18k and rating more than 80
select * 
from smartphones 
where brand_name = "Samsung" and price <= 18000 and rating >= 80;

-- 9. Display records of all Samsung smartphones whose price less than 18k and rating more than 80 with snapdragon processor

select * 
from smartphones 
where brand_name = "Samsung" and price <= 18000 and rating >= 80 and processor_brand = "snapdragon";

-- 10. Display records of all Samsung smartphones with ram > 8gb
select * 
from smartphones 
where brand_name = "Samsung" and ram_capacity > 8;

-- 11. Display records of all smartphones with snapdragon, exynos, bionic processors --
  
select * from smartphones
where processor_brand like '%Snapdragon%'
   or processor_brand like '%Exynos%'
   or processor_brand like '%Bionic%';
   
select * from smartphones
where processor_brand = 'Snapdragon'
   or processor_brand = 'Exynos'
   or processor_brand = 'Bionic';
   
select * 
from smartphones
where processor_brand in ('Snapdragon','Exynos','Bionic');

-- 12. Display records of all smartphones without snapdragon, exynos, bionic processors
select *
from smartphones
where processor_brand not in ("snapdragon" , "exynos" , "bionic");

-- 13. Display a record of costliest apple smartphone
select *
from smartphones
where brand_name like "apple"
order by price desc
limit 1;

# Apple phone maximum price
select max(price)
from smartphones
where brand_name = "Apple";

select *
from smartphones
where brand_name = 'Apple' and price = (select max(price)
from smartphones
where brand_name = "Apple");

-- 14. Display smartphones and its average rating

select model as smartphone, avg(rating) as avg_rating 
from smartphones
group by model;

-- 15. How many oneplus smartphones are there
select count(brand_name) as "Count of Oneplus Smartphones"
from smartphones 
where brand_name = "oneplus" ;


select count(model) as "Count of Oneplus Smartphones"
from smartphones 
where brand_name like "%oneplus%" ;

-- 16. Find the number of smartphones with 5G compatibility.
select *
from smartphones;

select count(model) as total_5g_smartphone
from smartphones
where has_5g= "true";

select count(*) as total_5g_smartphone
from smartphones
where has_5g= "true";

-- 17. Top 5 Samsung smartphones with biggest screen size
select * 
from smartphones 
where brand_name = "Samsung" 
order by screen_size desc 
limit 5;

-- 18. Find name and rating of worst rated Apple phone
select model, rating
from smartphones
where brand_name = "apple"
order by rating asc
limit 1;

# Worst rating
select min(rating)
from smartphones
where brand_name = "Apple";

select model, rating
from smartphones
where brand_name= "Apple" and rating = (select min(rating)
from smartphones
where brand_name = "Apple");

-- 19. Group smartphones by brand and display count, average price, max rating, avg screen size

select brand_name ,count(model) as count, avg(price), max(rating),round(avg(screen_size),2)
from smartphones
group by brand_name;

select brand_name ,count(model) as count, avg(price), max(rating),round(avg(screen_size),2)
from smartphones
group by brand_name
order by max(rating) desc, avg(price) asc;

-- 20. Which brand makes smallest screen smartphones

select brand_name, model, screen_size
from smartphones
order by screen_size asc
limit 1;

# smallest screen size
select min(screen_size)
from smartphones;

select brand_name, model, screen_size
from smartphones
where screen_size = (select min(screen_size)
from smartphones);