----Sequence Object

create sequence sequencevalue
as int
start with 1
INCREMENT by 1


---Before value

select *from sys.sequences where name='sequencevalue'

select next value for sequencevalue


----Alter the object to reset the sequence value: 

alter sequence [sequencevalue] restart with 6

---Creating decreament sequence
create sequence sequencevalue1
as int
start with 100
increment by -1

select next value for sequencevalue1

---------------------

----specify max & min
create sequence sequencevalue3
as  int
start with 100
increment by 10
minvalue 100
maxvalue 150
cache 150

select next value for sequencevalue3

drop sequence sequencevalue3


select next value for sequencevalue3 ---only print 150 after an arises an exception


---Drop sequence
drop sequence sequencevalue2

--------using sequenc object value in multiple tables

create sequence sqobjvalue
as int
start with 1
increment by 2


create table employee(id int primary key,ename varchar(20))

insert employee values(3,'veer')

--insert value with sequence value

insert into employee values(next value for sqobjvalue,'veerababu')
insert employee values(next value for sqobjvalue,'madhu')

select *from employee

---Note One sequencvalue is used in multiple tables  --using cycly automatically restart value

create table users(id int,Elocation varchar(20))

insert users values(next value for sqobjvalue,'mahesh')

select *from users


