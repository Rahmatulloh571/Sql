--1)Easy-Level Tasks
select * from Products
select category, count (productname) as cnt_category
from Products
group by category
--2)
select category, avg ( price) as avg_price
from Products
group by category
having category='electronics';
--3)
select * from Customers
where city like 'L%%';
--4)
select * from Products
where productname like '%%er';
--5)
select * from Customers
where country like '%%a';
--6)
select * from Products
where price=(select max( price) from Products);
--7)
select *, 
case when stockquantity<30 then 'Lowstock'
     else 'Sufficient'
	 end as Label_stock 
from Products;
--8)
select * from Customers
select country, count(customerid) as cnt_country
from customers
group by country;
--9)
select * from Orders
select min (quantity) as Min_quantity , max(quantity) as Max_quantity
from orders;
--10)Medium-Level Tasks
select distinct customerid 
from orders
where OrderDate>= '2023-01-01' and OrderDate<'2023-02-01'
EXCEPT
select distinct CustomerID from Invoices
--11)
select productname from Products
union all
select productname  from Products_Discounted
--12)
select productname from Products
union 
select productname  from Products_Discounted
--13)
SELECT * from Orders
select
       year(orderdate) as Years,
	   avg(totalamount) as Amount_year
from Orders
group by year(orderdate);
--14)
select * from Products
select productname, 
case when price <100 then 'Low' 
when price between 100 and 500 then 'Mid'
else 'High'
end as Pricegroup 
from Products;
--15)
SELECT district_name, [2012], [2013]
INTO Population_Each_Year
FROM (
    SELECT district_name, year, population
    FROM city_population
) AS SourceTable
PIVOT (
    SUM(population)
    FOR year IN ([2012], [2013])
) AS PivotTable;
select * from Population_Each_Year
--16)
select * from Sales
select Productid, sum (saleamount) as Total_amount
from Sales
group by Productid;
--17)
SELECT ProductName
FROM Products
WHERE ProductName LIKE '%oo%';
--18)
SELECT [year], [Bektemir], [Chilonzor], [Yakkasaroy]
INTO Population_Each_City
FROM (
    SELECT district_name, year, population
    FROM city_population
    WHERE district_name IN ('Bektemir', 'Chilonzor', 'Yakkasaroy')
) AS SourceTable
PIVOT (
    SUM(population)
    FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;
select * from Population_Each_City
--19)Hard-Level Tasks
select * from Invoices
select top 3 Customerid, sum(Totalamount) as Total_amount
from Invoices
group by CustomerID
order by sum(Totalamount) desc
--20)
SELECT district_name, year, population
INTO City_Population_Recreated
FROM Population_Each_Year
UNPIVOT (
    population FOR year IN ([2012], [2013])
) AS Unpivoted;
--21)
select * from Products
select * from Sales
select P.productname , count(saleid) as Salecount from Products as P
Join sales as S
on p.ProductID=s.ProductID
group by Productname 
--22)
SELECT district_name, year, population
INTO City_Population_v2  -- nomni o'zgartirdik
FROM (
    SELECT *
    FROM Population_Each_City
) AS SourceTable
UNPIVOT (
    population FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS UnpivotedResult;



