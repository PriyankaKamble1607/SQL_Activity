use employees;
 -- Create salesman table
CREATE TABLE salesman (
    salesman_id int primary key,
    name varchar(32),
    city varchar(32),
    commission int
);

-- Insert values one at a time
insert into salesman values(5001, 'James Hoog', 'New York', 15);

-- Insert multiple rows at once

-- View all columns
select * from salesman;
insert into	salesman values
	(5002, 'Nail Knite', 'Paris', 13), 
	(5005, 'Pit Alex', 'London', 11), 
    (5006, 'McLyon', 'Paris', 14), 
    (5007, 'Paul Adam', 'Rome', 13),
    (5003, 'Lauson Hen', 'San Jose', 12);

-- Show data from the salesman_id and city columns
select salesman_id, city from salesman;

-- Show data of salesman from Paris
select * from salesman where city='Paris';

-- Show salesman_id and commission of Paul Adam
select salesman_id, commission from salesman where name='Paul Adam';

-- Add the grade column
alter table salesman add grade int;

-- Update the values in the grade column
update salesman set grade=100;

-- Display data
select * from salesman;

-- Create a table named orders
create table orders(
    order_no int primary key, purchase_amount float, order_date date,
    customer_id int, salesman_id int);

-- Add values to the table
insert into orders values
(70001, 150.5, '2012-10-05', 3005, 5002), (70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001), (70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002), (70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-08-15', 3002, 5001), (70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003), (70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007), (70013, 3045.6, '2012-04-25', 3002, 5001);

select distinct salesman_id from orders;
select count(*) from employees where salary >(select * from employees);
select * from employees;
-- INSERT INTO employees salary;
create database PriyaTest;
CREATE table EMPLOYEE(
employee_id int primary key, 
employeename varchar(30),
contact int,
City varchar(30)
);

insert into EMPLOYEE values
(001,'pranju',02254678,'gadegaon'),
(002,'amar',21789921,'pune');

DROP table EMPLOYEE;
 
 select salesman_id from salesman where name='James Hoog'; 
 select *from salesman where city='Paris';
 select distinct city from salesman;
 describe salesman;
 alter table salesman add (salesvalue int);
alter table salesman drop salesvalue;
update salesman set city='pune' where name='Nail Knite';
SELECT * FROM salesman;
delete from salesman where grade=300;
select name from salesman order by name;
select grade from salesman where grade between 100 and 200;
commit;
delete from salesman where city='Rome';
insert into salesman values(5004,'priya','pune',13,300);
savepoint a;
rollback;
select salesman_id,min(grade),grade min_grade
from salesman 
group by salesman_id;

-- Create the customers table
create table customers (
    customer_id int primary key, customer_name varchar(32),
    city varchar(20), grade int, salesman_id int);

-- Insert values into it

select * from customers;

-- Write an SQL statement to know which salesman are working for which customer.
SELECT a.customer_name AS "Customer Name", a.city, b.name AS "Salesman", b.commission FROM customers a 
INNER JOIN salesman b ON a.salesman_id=b.salesman_id;

-- Write an SQL statement to make a list in ascending order for the customer who holds a grade less than 300 and works either through a salesman
SELECT a.customer_name, a.city, a.grade, b.name AS "Salesman", b.city FROM customers a 
LEFT OUTER JOIN salesman b ON a.salesman_id=b.salesman_id WHERE a.grade<300 
ORDER BY a.customer_id;



