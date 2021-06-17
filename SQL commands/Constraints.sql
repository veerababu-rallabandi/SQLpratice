---constraints

---NOT NULL

create table sample1(id int NOT NULL,name varchar(20))

insert into sample1 values(1,'veeru')

insert sample1 (id,name)values('veera')--not allowed(definitely mention id value)



insert sample1(id)values(30)

select *from sample1


---Default constraint
create table sample2(id int, ename varchar(20), loc varchar(20) default 'bhimavaram',joindate datetime default Getdate())

insert into sample2(id,ename,loc)values(2,'veer','hyd')

insert into sample2(id,ename)values(3,'mahesh')

select *from sample2

---add constraint
alter table sample2 add constraint ename_default default 'ravi' for ename

insert into sample2(id)values(32)

---To drop constraint

alter table sample2 drop constraint ename_default
insert sample2(id)values(34)--- before ravi placed but when drop constraint null placed 

-------------------
---Unique constraint

create table sample3(id int unique,branch varchar(20))

insert sample3 values(1,'MCA')

insert sample3 values(1,'BTech')--not allowed ,that is unique

insert sample3(branch)values('Btech')

insert sample3(branch)values('Bsc')---only one time allowed null bcoz id has unique constraint

---add constraint
alter table sample3 add constraint b_name unique(branch)
insert sample3 (id,branch)values(9,'MCA') ---not allowed bcoz MCA already in that table

--To drop constraint
alter table sample3 drop constraint b_name
insert sample3(id,branch)values(9,'MCA')--allowed

select *from sample3

-------------------
----Primary key

create table sample4(id int primary key,ename varchar(20),salary money)

insert into sample4 values(1,'ravi',25000)
insert into sample4 values(1,'ravibabu',35000)--not allowed id -primary key
insert sample4 (id,salary)values(2,26000)

select *from sample4

---add constraint
alter table sample4 add constraint e_default default 'employee' for ename
insert sample4(id)values(8)

---to drop constraint
alter table sample4 drop constraint e_default

-------------------------------
---Foreign key

create table sample5(pid int not null references sample4(id),ph int)

insert into sample5 values(1,9705)

insert into sample5 values(2,776);
insert into sample5 values(8,474)

insert into sample5 values(9,457) ---not allowed parent table doesnot contain 9 id

select *from sample4
select *from sample5

----------------------

---------check constraint

---imposing constraints on table level

create table sample6(
	id int, 
	ename varchar(20),
	age int
	constraint a_age check(age>18))


insert sample6 values(1,'veeru',22)
insert sample6 values(2,'veera',18)--not allowed not satisfies the condition

select *from sample6

----imposing constraints on column level
create table sample7(
			id int,
			ename varchar(20) constraint e_default default 'employee'
			);
insert into sample7 (id)values(2)
select *from sample7
	




