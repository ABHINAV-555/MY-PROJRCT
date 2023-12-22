create database group_p;
create table bank_deatil (cust_id int identity(1,1),amount int ,mode varchar(50),cust_profession varchar(50))

select*from bank_deatil

insert into bank_deatil (amount,mode,cust_profession)values(300000,'card','JOB')
insert into bank_deatil (amount,mode,cust_profession)values(400000,'online','JOB1')
insert into bank_deatil (amount,mode,cust_profession) values(500000,'card','JOB') 
insert into bank_deatil (amount,mode,cust_profession) values(200000,'online','JOB2')
insert into bank_deatil (amount,mode,cust_profession)values(700000,'card','JOB')
insert into bank_deatil (amount,mode,cust_profession)values(500000,'online','JOB1') 
insert into bank_deatil (amount,mode,cust_profession)values(500000,'card','JOB')
insert into bank_deatil (amount,mode,cust_profession)values(400000,'online','JOB')
insert into bank_deatil (amount,mode,cust_profession)values(200000,'online','JOB1') 
insert into bank_deatil (amount,mode,cust_profession)values(100000,'card','JOB2')
insert into bank_deatil (amount,mode,cust_profession)values(3500000,'card','JOB')
insert into bank_deatil (amount,mode,cust_profession)values(310000,'online','JOB1')

select*from bank_deatil

select  amount,mode from bank_deatil group by mode
select sum(amount) as total_payment ,mode from bank_deatil group by mode
select sum(amount) as total_payment ,mode,cust_profession from bank_deatil group by mode,cust_profession