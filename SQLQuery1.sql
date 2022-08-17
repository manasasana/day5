
use [student];

go

CREATE TABLE EmpInfo(
EmpId int primary key,
Name varchar(100),
DOB date,
BaseOffice varchar(100)
);

insert into EmpInfo values(1,'manasa', '2000-8-8','banglore');

select * from EmpInfo;
insert into EmpInfo values(2,'sana', '2000-5-2','banglore');
insert into EmpInfo values(3,'sam', '2000-8-2','banglore');
insert into EmpInfo values(4,'sana', '2000-5-2','banglore');

delete from EmpInfo where name='sam';

update EmpInfo set name='john' where EmpId=4;

ALTER TABLE EmpInfo
ADD phone bigint;

update EmpInfo set phone=9006876210 where EmpId=1;

select * from EmpInfo where BaseOffice='banglore';

insert into EmpInfo values(42,'robert', '2001-9-12','chennai',987652311);
insert into EmpInfo values(14,'soniya', '2000-5-22','pune',9871236547);
insert into EmpInfo values(54,'nayan', '2000-4-24','banglore',8976543210);

select * from EmpInfo;

select count(Distinct BaseOffice) as distinct_baseoffice from EmpInfo;

ALTER TABLE EmpInfo
ADD Designation varchar(100);

update EmpInfo set Designation='Software engineer' where BaseOffice='pune';

select EmpId,Designation from EmpInfo where BaseOffice='banglore' or BaseOffice='chennai';

select count(EmpId),BaseOffice from EmpInfo group by BaseOffice order by BaseOffice asc;

SELECT * INTO BangloreEmployee FROM EmpInfo where BaseOffice='banglore';  
select * from BangloreEmployee;
insert into BangloreEmployee select * from EmpInfo where BaseOffice='banglore';

drop table BangloreEmployee;

select sum(phone) as average_number from EmpInfo where BaseOffice='banglore';

select Name, Designation from EmpInfo where Designation like 'S%V%P%';

insert into EmpInfo values(77,'robert', '2001-9-12','chennai',987652311,'Tester');

select  EmpId,Name, Designation,BaseOffice,DOB from EmpInfo where DOB between '2000-1-1' and '2000-12-31';

select top 3*  from EmpInfo where Designation='Backend Developer';

select top 1 EmpId from EmpInfo order by newid();

create table EmpSalary
(
EmpId int not null foreign key references EmpInfo(EmpId),
Salary float not null,

);
insert into EmpSalary values (1,40000);
insert into EmpSalary values (2,45000);
insert into EmpSalary values (4,48000);
insert into EmpSalary values (14,30000);
insert into EmpSalary values (42,42000);
insert into EmpSalary values (54,40000);
insert into EmpSalary values (77,90000);
insert into EmpSalary values (87,70000);

select * from EmpSalary;

select e.EmpId, e.Name,e.BaseOffice, s.Salary from EmpInfo e,EmpSalary s 
where e.EmpId=s.EmpId and s.Salary>40000 and e.BaseOffice='banglore';