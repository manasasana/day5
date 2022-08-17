use [student]
go
create table salesman(
salesman_id int primary key,
name varchar(20),
city varchar(15),
commission float
);
insert into salesman values(5001,'James Hoog','New York',0.15);
insert into salesman values(5002,'Nail Knite','Paris',0.13);
insert into salesman values(5005,'Pit Alex','London',0.11);
insert into salesman values(5006,'Mc Lyon','Paris',0.14);
insert into salesman values(5007,'Paul Adam','Rome',0.13);
insert into salesman values(5003,'Lauson Hen','San Jose',0.12);
select *from salesman;
select salesman_id, name, city, commission from salesman where commission between 0.12 and 0.14;

create table orders(
ord_no int primary key,
purch_amt float,
ord_date date,
customer_id int,
salesman_id int
);

insert into orders values(70001,150.5,'2012-10-05',3005,5002);
insert into orders values(70009,270.65,'2012-09-10',3001,5005);
insert into orders values(70002,65.26,'2012-10-05',3002,5001);
insert into orders values(70004,110.5,'2012-08-17',3009,5003);
insert into orders values(70007,948.5,'2012-09-10',3005,5002);
insert into orders values(70005,2400.6,'2012-07-27',3007,5001);
insert into orders values(70008,5760,'2012-09-10',3002,5001);
insert into orders values(70010,1983.43,'2012-10-10',3004,5006);
insert into orders values(70003,2480.4,'2012-10-10',3009,5003);
insert into orders values(70012,250.45,'2012-06-27',3008,5002);
insert into orders values(70011,75.29,'2012-08-1',3003,5007);
insert into orders values(70013,3045.6,'2012-04-25',3002,5001);
select *from orders;

select ord_no, purch_amt, ord_date, customer_id, salesman_id from orders where purch_amt 
between 500 and 4000 and purch_amt  not between 948.50 and 1983.43;

create table totalValue
(
value varchar(50)
);
insert into totalvalue values('A001/DJ-402\44_/100/2015');
insert into totalvalue values('A001_\DJ-402\44_/100/2015');
insert into totalvalue values('A001_DJ-402-2014-2015');
insert into totalvalue values('A002_DJ-401-2014-2015');
insert into totalvalue values('A001/DJ_401');
insert into totalvalue values('A001/DJ_402\44');
insert into totalvalue values('A001/DJ_402\44\2015');
insert into totalvalue values('A001/DJ-402%45\2015/200');
insert into totalvalue values('A001/DJ_402\45\2015%100');
insert into totalvalue values('A001/DJ_402%45\2015/300');
insert into totalvalue values('A001/DJ-402\44');
select * from totalvalue;

select * from totalvalue where value not like '%_%';