use rahuldb;
create table future_employee(
emp_id int primary key,
ename varchar(20)  not null,
designation varchar(25) not null,
dept varchar(20),
working_hour varchar(10),
salary double(10,2));
insert into future_employee values
(1,'HEMANT','ENGINEER','EE','8','10000'),
(2,'RITU','SME','BCA','6','11000'),
(3,'RAHUL','MGR','CSE','10','12000'),
(4,'SANA','ADMIN','MSC','12','13000'),
(5,'ARYAN','ENGINEER','EE','8','14000'),
(6,'MUKUL','ADMIN','ME','8','15000'),
(7,'UPASANA','ENGINEER','EE','8','16000'),
(8,'PRINCE','MGR','ME','8','17000'),
(9,'TUSHAR','ENGINEER','CE','8','18000'),
(10,'MEGHA','SME','BCA','6','19000');

#aggreagte function--- group by 
#count
select dept,count(dept) as 'total_emp_in_dept' from future_employee group by dept;
#sum
select dept,sum(working_hour) as 'total_hours' from future_employee group by dept;
select dept,sum(working_hour) as 'total_hours' from future_employee group by dept='ME';
select dept,sum(salary) as 'total_dept_salary' from future_employee group by dept;
select dept,sum(salary) as 'total_dept_salary' from future_employee group by dept='EE';
#average
select dept,avg(salary) as 'avg_dept_salary' from future_employee group by dept;
#min
select dept,min(salary) as 'Min_dept_salary' from future_employee group by dept;
select min(salary) from future_employee  where dept='EE';
select ename,min(salary) from future_employee;#
 select min(salary) from future_employee;
 
 #max
 select dept,max(salary) as 'Max_dept_salary' from future_employee group by dept;
select max(salary) from future_employee  where dept='EE';
 select max(salary) from future_employee;

#subquery
select ename, dept,saalary from future_employee where salary=(select  max(salary) from future_employee);

select * from future_employee where salary=(select min(salary) from future_employee );

#having
select dept,sum(working_hour)as 'total hours' from future_employee group by dept having sum(working_hour)>15;