----

-----Without casecade Rules

create table p1(id int primary key, ename varchar(20))

insert p1 values(10,'veeru')
insert p1 values(20,'ravi')
insert p1 values(30,'mahesh')
insert p1 values(40,'srinu')


create table c1(mobno bigint,network varchar(20),id int foreign key references p1(id))
insert into c1 values(9705082873,'airtel',10)
insert c1 values(4578457445,'bsnl',20)
insert c1 values(4568798456,'idea',30)

---Insertion Rule
insert c1 values(4548474,'vodefone',50)--not allowed(fixed)

---Updation Rule
update p1 set id=50 where id=10  ---not allowed

---Deletion Rule
delete from p1 where id=30 ----Not allowed(bcoz reference to child table)


select*from p1
select * from c1


----with casecade rules

create table p2(id int primary key, ename varchar(20))

insert p2 values(10,'veeru')
insert p2 values(20,'ravi')
insert p2 values(30,'mahesh')
insert p2 values(40,'srinu')

create table c2(
		mobno bigint,
		network varchar(20),
		id int foreign key references p1(id) on update cascade on delete cascade)


insert into c2 values(9705082873,'airtel',10)
insert c2 values(4578457445,'bsnl',20)
insert c2 values(4568798456,'idea',30)

--INsertion Rule(fixed)
insert c2 values(4545544585,'airtel',50)---not allowed (bcoz parent table doesn't contain 50

---Updation Rule
update p2 set id=1 where id=10

---Deletion Rule
delete from p2 where id=30

-----update parent data using cascade 


select *from p2
select*from c2