--create database and table 


create database Class_student
create table class_A (roll_number int,frist_name varchar(75),last_name varchar(75))
create table class_B (Addresss varchar(75),city varchar(75),sport varchar(75),roll_number int)
create table class_A1 (math_marks int,physics_marks int,chemistry_marks int,hindi_marks int,english_marks int,roll_number int)

--show your data 
select* from class_A
select* from class_B
select* from class_A1

--insert data into table class_a
insert into class_A(roll_number,frist_name,last_name) values(01,'A1','Z1')
insert into class_A(roll_number,frist_name,last_name) values(02,'A2','Z2')
insert into class_A(roll_number,frist_name,last_name) values(03,'A3','Z3')
insert into class_A(roll_number,frist_name,last_name) values(04,'A4','Z4')
insert into class_A(roll_number,frist_name,last_name) values(05,'A5','Z5')
insert into class_A(roll_number,frist_name,last_name) values(06,'A6','Z6')
insert into class_A(roll_number,frist_name,last_name) values(07,'A7','Z7')
insert into class_A(roll_number,frist_name,last_name) values(08,'A8','Z8')
insert into class_A(roll_number,frist_name,last_name) values(09,'A9','Z9')
insert into class_A(roll_number,frist_name,last_name) values(10,'A10','Z10')

--insert data into table class_b
insert into class_B(Addresss,city,sport,roll_number) values('C1','D1','B1',10)
insert into class_B(Addresss,city,sport,roll_number) values('C2','D5','B3',07)
insert into class_B(Addresss,city,sport,roll_number) values('C3','D2','B2',11)
insert into class_B(Addresss,city,sport,roll_number) values('C4','D4','B2',05)
insert into class_B(Addresss,city,sport,roll_number) values('C1','D3','B1',01)
insert into class_B(Addresss,city,sport,roll_number) values('C4','D2','B1',05)
insert into class_B(Addresss,city,sport,roll_number) values('C1','D3','B1',04)
insert into class_B(Addresss,city,sport,roll_number) values('C3','D5','B2',03)
insert into class_B(Addresss,city,sport,roll_number) values('C2','D4','B3',05)
insert into class_B(Addresss,city,sport,roll_number) values('C1','D1','B2',08)

--insert data into table class_A1
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(10,11,13,14,14,04)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(14,15,10,17,12,05)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(12,12,11,14,14,08)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(15,12,12,15,13,03)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(12,13,12,17,11,01)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(10,12,14,14,14,02)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(10,12,14,17,10,06)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(10,11,14,17,10,17)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(14,13,13,15,14,09)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(12,12,14,14,15,08)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(13,10,13,17,14,10)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(10,12,14,15,12,11)
insert into class_A1(math_marks,physics_marks,chemistry_marks,hindi_marks,english_marks,roll_number) values(11,13,13,17,14,12)

select* from class_A
select* from class_B
select* from class_A1

--PERFORMED INNER JOIN 
select* from class_A1

SELECT * from class_A
inner join
class_A1
on
class_A.roll_number = class_A1.roll_number


SELECT * from class_A
SELECT * from class_A1

SELECT * from class_A
inner join
class_A1
on
class_A.roll_number = class_A1.roll_number


SELECT * from class_A
inner join
class_B
on
class_A.roll_number = class_B.roll_number

---left join

select * from class_A
left join
class_B
on
class_A.roll_number=class_B.roll_number

select * from class_A
left join
class_A1
on
class_A.roll_number=class_A1.roll_number

--left join with 3 table 
select * from class_A
left join
class_B
on
class_A.roll_number=class_B.roll_number
left join 
class_A1
on
class_B.roll_number=class_A1.roll_number


--right join

select * from class_A
right join
class_A1
on
class_A.roll_number=class_A1.roll_number

--full join=(right join+ leftjoin)

select * from class_A
full join
class_B
on
class_A.roll_number=class_B.roll_number
select * from class_A
select * from class_B


--self join

create table class_B1(techer_id int,student_id int ,subject varchar(75))
select * from class_B1
insert into class_B1(techer_id,student_id,subject )values(01,05,'math')
insert into class_B1(techer_id,student_id,subject )values(02,04,'hindi')
insert into class_B1(techer_id,student_id,subject )values(03,01,'english')
insert into class_B1(techer_id,student_id,subject )values(04,02,'chemistry')
insert into class_B1(techer_id,student_id,subject )values(05,01,'physics')


select a.techer_id,a.subject,b.student_id from class_B1 as a
join
class_B1 as b
on
(a.techer_id=b.student_id)
select* from class_B1


create table emp_records(emp_id int,emp_name varchar(75),manager_id int)
select * from emp_records
insert into emp_records(emp_id,emp_name,manager_id)values(01,'rahul',05)
insert into emp_records(emp_id,emp_name,manager_id)values(02,'shyam',04)
insert into emp_records(emp_id,emp_name,manager_id)values(03,'ravi',01)
insert into emp_records(emp_id,emp_name,manager_id)values(04,'vasu',02)
insert into emp_records(emp_id,emp_name,manager_id)values(05,'anu',03)
select * from emp_records

select a.emp_id,a.emp_name as npa, b.emp_name as mnp from   emp_records as a
join
emp_records as b
on
(b.emp_id=a.manager_id)
select* from emp_records









