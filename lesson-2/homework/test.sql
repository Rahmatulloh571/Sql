--1. Basic-Level

create table Employees (Empid int, Name varchar (50), Salary decimal (10,2))

insert into Employees values (
1, 'CEO', $10000),
(2, 'CTO', $5000),
(3, 'Founder', $50000)

Select * from Employees

update Employees
set Salary= 7000
where Salary=$10000

delete from Employees
where Empid=2

Select * from Employees

--delete= bu funksiya jadvaldan qatorlarni o'chirishda foydalaniladi va qaytib tiklasa bo'ladi agar transaction yoqilgan bo'lsa
--truncate= bu jadvaldan butunlay o'chirib yuboradi qaytib tiklab bo'lmaydi butun jadvalni o'chiradi lekin struktura saqlanib qoladi
--drop= bu funksiya ham butunlay o'chirib yuboradi bunda struktura ham saqlanib qolmaydi


alter table Employees
alter column Name varchar (100)

Select * from Employees

--Create column Employees
--set (Department varchar (50))

alter table Employees 
add Department varchar (50);


Select * from Employees

update Employees
set Department= 'Management '
where Empid=1
go 
Update Employees
set Department = 'Executive '
where Empid=3

Select * from Employees

--update Employees 
--set Salary decimal (10,2)= Salary float

alter table Employees 
alter column Salary float

create table Departments (
Departmentid int primary key,
DepartmentName varchar (50))

truncate table Employees

Select * from Employees

--2. Intermediate-Level 

insert into Departments values 
(1, 'Management'),
(2, 'Executive'),
(3, 'Marketing'),
(4, 'Sales')

select *from Departments

Update Employees
set Department= 'Management'
where salary > 5000;

truncate table Employees

alter table Employees 
drop column Department

 select *from Employees

 --alter table Employees
 --alter table StaffMembers

 exec sp_rename 'Employees', 'StaffMembers';

 select * from StaffMembers

 drop table StaffMembers

 --3. Advanced-Level

 create table Products (Productid int, ProductName varchar(50), Category varchar(50), Price decimal (10,2), Stock int )
 go 
 INSERT INTO Products (ProductID, ProductName, Category, Price, Stock)
VALUES 
(1, 'Laptop Lenovo', 'Electronics', 799.99, 25),
(2, 'iPhone 14', 'Electronics', 999.00, 10),
(3, 'Office Chair', 'Furniture', 150.75, 40),
(4, 'Notebook A5', 'Stationery', 2.50, 300);

select * from Products

alter table Products 
add constraint chk_price check (Price>0)

alter table Products 
add StockQuantity int default 50

select * from Products

update Products 
set StockQuantity = 50
Where Stockquantity is null;

exec sp_rename 'Products.category', 'ProductCategory','column'

Select * into Products_Backup 
from Products

select * from Products_Backup

exec sp_rename 'Products', 'Inventory'

alter table Inventory
drop constraint chk_Price

alter table Inventory 
alter column Price float

alter table Inventory 
add ProductsCode int identity (1000,5);

Select * from Inventory
