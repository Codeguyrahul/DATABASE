# create a new database
CREATE database space;
#create a new table under space database
CREATE table Student
(Stu_id int, Stu_name varchar(20), Age int);
insert into Student Values (1,'raman',22);
insert into Student Values (2,'hemant',23);
insert into Student Values (3,'devesh',21);
insert into Student Values (4,'tarun',20);
insert into Student Values (5,'veena',24);
insert into Student Values (6,'sujal',19);
CREATE table JavaStudent(id int, name varchar(20), fees int);
#insert values in the table
insert into javaStudent values(1,'sayan',23000);
insert into javaStudent values(2,'Jaita',23000);

#Drop command is used to delete/remove the database/table the database/table
Drop table JavaStudent;
#Alter command is used  to change/modify the exitising stuscurr
Alter table Student add Email_mail1 varchar(20);
Alter table student drop age;
Alter table Student MODIFY Stu_name Varchar(30);
#Create a new table
CREATE table Java_Student_1(id int primary key auto_increment,sname varchar(50), sphone bigint(11) not null unique,
semail varchar(30) not null unique, sadd varchar(50),squalification3 varchar(10) not null);
#insert values
insert into java_student_1 values(1,'saina',9999999999,'saina@gmail.com','kolkata','BCA');
insert into java_student_1 values(2,'amit',9945549999,'amit@gmail.com','delhi','BCA');


# add new  column
alter table java_student_1 ADD age int after sname;
#modify datatype size
alter table java_student_1 MODIFY squalification3  varchar(20) not null;
#drop column frokkm JavaStudent table
alter table java_student_1 Drop Column sphone;
#drop column from JavaStudent table
alter table java_student_1 RENAME to student_details;
#change column name
insert into student_details values (3,'rahul',23,'rahul@gmail.com','meerut','btech');
#delete all the rows from the value
truncate table student_details;
#delete both(Structure & record)
Drop table student_details;



