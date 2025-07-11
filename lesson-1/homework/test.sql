--------Easy questions

-------- 1. Define the following terms: data, database, relational database, and table.

--------Data= data bu har qanday raqam, harf son va yozuvlardan iborat har qanday xabarga aytiladi
--------Database = Shu ma'lumotlarni saqlaydigan baza hisoblanadi
--------Relational Databasa = bir biriga aloqador bo'lgan faqat bir sohaga yoki bir kompaniyaga tegishli ma'lumotlar bazasi hisoblanadi
--------Table = bu ma'lum bir turdagi ma'lumotlarni qator va ustunlardan iborat yacheykalarda alohida-alohida saqlanishiga aytiladi

------2.List five key features of SQL Server.


------1. Relational Database engine (yadro tizimi)
------SQL Server — bu relatsion ma’lumotlar bazasi tizimi, ya’ni ma’lumotlar jadval (table) ko‘rinishida saqlanadi.

------U ACID printsiplari asosida ishlaydi (Atomiklik, Uzluksizlik, Izolyatsiya, Mustahkamlik), bu esa ishonchli tranzaksiyalarni ta’minlaydi.

------2. Transact-SQL (T-SQL) tilini qo‘llab-quvvatlash
------SQL Server o‘zining maxsus tiliga ega: T-SQL (Transact-SQL).

------Bu oddiy SQL dan farqli ravishda shart operatorlari, tsikllar, xatolikni ushlash, va protsedural dasturlash imkonini beradi.
------Masalan: IF, WHILE, TRY...CATCH kabi operatorlar mavjud.

------3. Kuchli xavfsizlik va autentifikatsiya
------SQL Server ma’lumotlarni himoyalash uchun kuchli mexanizmlarga ega:

------Windows autentifikatsiyasi va SQL autentifikatsiyasi

------Rolga asoslangan kirish nazorati

------Ma’lumotni shifrlash, satr darajasida xavfsizlik, va dinamik ma’lumotni yashirish

------4. Yuqori mavjudlik va avariya holatidan tiklanish (High Availability & Disaster Recovery)
------SQL Server ishonchli tizimlar yaratish uchun quyidagi funksiyalarga ega:

------Always On Availability Groups — real vaqtda zaxira nusxa olish

------Ma’lumotlar oynasi (mirroring) va failover clustering

------Avtomatik backup va tiklash vositalari

------Bu funksiyalar orqali tizim ishdan chiqsa ham, ma’lumotlar yo‘qolmaydi va uzilishlar kamayadi.

------5. Biznes analitika va integratsiya vositalari
------SQL Server tarkibida quyidagi qulay BI (Business Intelligence) vositalari mavjud:

------SSIS (SQL Server Integration Services) — ma’lumotlarni ETL (Extract, Transform, Load) qilish

------SSRS (SQL Server Reporting Services) — hisobotlar tuzish

------SSAS (SQL Server Analysis Services) — analitik maqsadlar uchun OLAP (Online Analytical Processing)
------

----1. Windows Authentication Mode
----Tavsifi: Foydalanuvchi Windows tizimdagi login (Active Directory) orqali tizimga ulanadi.

----Xavfsizlik darajasi: Eng xavfsiz usul, chunki foydalanuvchi ishonchliligi Windows tomonidan tekshiriladi.

----Parolni SQL Serverda saqlamaydi — tizim foydalanuvchini avtomatik tan oladi.

----Masalan: Siz Windows kompyuteringizga kirgan holatda SQL Server Management Studio (SSMS) orqali "Windows Authentication" ni tanlaysiz — parol so‘ralmaydi.

----2. SQL Server Authentication Mode
----Tavsifi: Foydalanuvchi SQL Serverda yaratilgan foydalanuvchi nomi va paroli orqali ulanadi.

----Moslashuvchan: Boshqa platformalar (masalan, mobil ilovalar yoki veb ilovalar) uchun foydalidir.

----Parol va login bevosita SQL Serverda saqlanadi.

----Masalan: Login: admin, Password: P@ssw0rd bo‘lsa, uni ulanayotgan dasturda kiritasiz.

----Qo‘shimcha:
----SQL Server’ni o‘rnatayotganda quyidagilarni tanlash mumkin:

----Windows Authentication only

----Mixed Mode Authentication (Windows + SQL Server Authentication)


--Medium questions

create database SchoolIDB;
use SchoolIDB;
create table Students (
StudentsID int primary key , 
name varchar (50), 
age int );


-- 1. SQL Server — Ma’lumotlar bazasi tizimi
--To‘liq nomi: Microsoft SQL Server

--Bu nima?
--Microsoft tomonidan ishlab chiqilgan relatsion ma’lumotlar bazasini boshqarish tizimi (RDBMS).

--Vazifasi:

--Ma’lumotlarni saqlash

--So‘rovlarni bajarish

--Xavfsizlikni ta’minlash

--Zaxiralash va tahlil qilish

--Ishlaydi: Serverda, odatda fonda (backend) xizmat sifatida
