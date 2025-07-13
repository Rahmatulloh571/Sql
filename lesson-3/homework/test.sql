--Easy-Level Tasks (10)

--1)
--Bulk insert is a sql query which is used for importing data from external databases, such as excel, google sheets and other type of platforms which sql server can
--read this type of data
--Purpose of Bulk insert 
--1. Import data from external users efficiently and quickly
--2. Automate of process which importing datasets to sql servers
--3. Improve performance when loading big data to sql

--2)
--1. csv(comma separated values)
----used for importing excel files, reports and system integrations
----easy to create and read
----Most common data type for Bulk insert data exchange
----Supported by: bulk insert, bcp, openrowset
--2. Excel (XlS, XLSX)
--frequently used in business enviroments
--often contains structured tables and reports
-- Imported using: openrowset, bulk, import wizard, SSIS(SQL server integration server)
--3. ✅ TXT (Plain Text with Delimiters)
--Custom text format using delimiters like tab (\t), pipe (|), or semicolon (;).
--Used for logs, exports from legacy systems, or custom ETL tools.
--Imported using: BULK INSERT, bcp, OPENROWSET.
--4. ✅ JSON (JavaScript Object Notation)
--Popular in APIs, web applications, and NoSQL integrations.
--SQL Server (2016+) supports native JSON parsing.
--Imported using: OPENROWSET(BULK...), OPENJSON, JSON_VALUE, etc.

--3)
create table Products (Productid int primary key, ProductName varchar(50), Price decimal (10,2))

--4)
insert into Products values 
(1,'Phone',500),
(2, 'Computer', 2000),
(3, 'Car', 50000)
select*from Products

--5)
------1. NULL
----NULL means no value or unknown value.
----It indicates that a field is empty, not zero or blank — just not assigned.
----It can be used when the value is optional or unknown at the time of data entry
----2. NOT NULL
----NOT NULL is a constraint that prevents a column from having NULL values.
----It ensures the field must always contain a value.

--6)
ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

--7)
--Products table is created to enter transactions in the shopping mall during the year

--8)
alter table Products
add[CategoryId] int

--9)
create table Categories (CategoryId int primary key, CategoryName varchar(50) unique)

--10)
--identity column is creating for give a unique numbers for this table, this process is fully automating in order to given commands

--Medium-Level Tasks (10)

select* from Products

truncate table Products

bulk insert [AdventureWorks2022].[dbo].[Products]
from 'C:\Users\user\Downloads\products_real_data.xlsx'
with (
firstrow=2,
fieldterminator =',',
rowterminator='/n'
)
