


create database Assign2_Db

create table CompanyInfo
(CId int primary key,
CName nvarchar(50))
insert into CompanyInfo values(1,'Samsung')
insert into CompanyInfo values(2,'HP')
insert into CompanyInfo values(3,'Apple')
insert into CompanyInfo values(4,'Dell')
insert into CompanyInfo values(5,'Toshiba')
insert into CompanyInfo values(6,'Redmi')


Create Table ProductInfo
(
    PID INT PRIMARY KEY,
    PName NVARCHAR(50),
	PPrice float,
	PMDate date not null,
    CId INT,
    FOREIGN KEY (CId) REFERENCES CompanyInfo(CId)
)

insert into ProductInfo values(101,'Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values(102,'Laptop',35000.90,'12/12/2023',2)
insert into ProductInfo values(103,'Mobile',15000.90,'12/03/2023',2)
insert into ProductInfo values(104,'Laptop',135000.90,'12/12/2023',3)
insert into ProductInfo values(105,'Mobile',65000.90,'12/12/2023',3)
insert into ProductInfo values(106,'Laptop',35000.90,'12/12/2023',5)
insert into ProductInfo values(107,'Mobile',35000.90,'12/01/2023',5)
insert into ProductInfo values(108,'Earpod',1000.90,'12/01/2023',3)
insert into ProductInfo values(109,'Laptop',85000.90,'12/12/2023',6)
insert into ProductInfo values(110,'Mobile',55000.90,'12/12/2023',1)

Select CI.CName AS CompanyName,PI.PID,PI.PName AS ProductName,PI.PPrice,PI.PMDate
FROM CompanyInfo CI
JOIN ProductInfo PI ON CI.CId = PI.CId

Select  PI.PName AS ProductName, CI.CName AS CompanyName
FROM ProductInfo PI
JOIN CompanyInfo CI ON PI.CId = CI.CId;

SELECT CI.CName AS CompanyName,PI.PName AS ProductName
FROM CompanyInfo CI
CROSS JOIN ProductInfo PI;
