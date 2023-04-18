create database college;
create table students_1(id int primary key,
sname varchar(20) not null,
sphone bigint(11) not null unique,
semail varchar(30) not null unique,
sadd varchar(50),
squalification varchar(10) not null,
sdept varchar(20));
insert into  students_1 values
(1,'RANOJOY',831122288,'ran@gmail.com','chennai','MCA','IT'),
(2,'DEBKANTA',822822288,'dev@gmail.com','kolkata','BE','IT'),
(3,'ARNAB',834332288,'ganesh@gmail.com','delhi','B Tech','CIVIL'),
(4,'PUJA',834772288,'puja@gmail.com','pune','MCA','IT'),
(5,'AVIJIT',834888288,'avi@gmail.com','mumbai','BE','ELECTRICAL'),
(6,'AKASH',834992288,'akash@gmail.com','goa','B Tech','MECHANICAL');
# add new column 
 ALTER TABLE students_1 ADD age INT AFTER sname;
 # modify datatype size

 alter table  students_1 modify squalification varchar(20) not null;
 #modify constraint
 alter table  students_1 modify sphone int not null;
 # drop column
 alter table  students_1 drop column sdept;
 #change column name
 alter table  students_1 change column age sage int;
 #rename table name
 alter table   students_1 rename to Student_information;

update Student_information set sage=22 where ID=1;
update Student_information set sage=20 where ID=2;
update Student_information set sage=25 where ID=3;
update Student_information set sage=22 where ID=4;
update Student_information set sage=23 where ID=5;
update Student_information set sage=25 where ID=6;

alter table Student_information add fees double after squalification;

update Student_information set fees=1000.50 where ID=1;
update Student_information set fees=1000.50 where ID=2;
update Student_information set fees=1000.50 where ID=3;
update Student_information set fees=1000.50 where ID=4;
update Student_information set fees=1000.50 where ID=5;
update Student_information set fees=1000.50 where ID=6;

update Student_information set squalification='BCA' where Id=4;
update Student_information set fees=2000.50  where id=4;

update Student_information set sadd='mumbai' where id=5;

delete from Student_information where id=6; 
#delete any specific column
alter table Student_information Drop column fees;

#select
select*from Student_information;
# where condition
select*from Student_information where id=1;
# and(both the condition should true)
select* from Student_information where sadd='kolkata' and squalification='BE';
# or(any one condition should true)
select * from Student_information where sadd='kolkata' or squalification='BE';
#not
select* from Student_information where squalification !='BE';
# in
select* from Student_information where sadd in('mumbai','goa');
#starts with
select* from Student_information where sname like 'A%';


#ends with
select* from Student_information where sname like '%T';
# in between
select*from Student_information where sname like '%I%';

# start & ends with
select*from Student_information where sname like 'A%T';
#missing letter
select* from Student_information where sadd like 'g_a';
select* from Student_information where sadd like 'A_n_b';

#query with select
select id,sname,sphone,sadd from Student_information;
select* from Student_information where id=5;
select*from Student_information where sname='BIDISHA';

#distinct
select distinct sname from Student_information;















