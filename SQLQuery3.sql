create database Assignment8
use Assignment8

create table Products(
Pid char(6) primary key,
PName nvarchar(50) not null,
PPrice int not null,
MfgDate date not null,
ExpDate date not null);

insert into Products VALUES ('P00001','Mobile',20000,'12/01/2023','07/07/2024')
insert into Products VALUES ('P00002','Laptop',65000,'01/06/2023','06/06/2024')
insert into Products VALUES ('P00008','Tab',40000,'09/24/2022','05/25/2024')
insert into Products VALUES ('P00004','Laptop',76000,'12/25/2023','06/25/2024')
insert into Products VALUES ('P00007','Mobile',35000,'06/22/2018','08/18/2023')
insert into Products VALUES ('P00005','Laptop',36000,'07/16/2020','08/19/2025')
insert into Products VALUES ('P00006','Tab',338000,'08/18/2019','08/20/2026')
insert into Products VALUES ('P00009','Mobile',56000,'09/19/2020','08/21/2025')
insert into Products VALUES ('P00003','Laptop',44000,'10/21/2021','08/22/2024')
insert into Products VALUES ('P00010','Tv',80000,'03/20/2022','08/19/2024')

select * from Products
delete from products
select Top 5 * from Products Order By PName DESC;     



