---select

create table emp(eid int, ename varchar(20),eloc varchar(20))

insert into emp values(1,'veeru','bvrm')

insert into emp values(2,'babu','hyd')

insert into emp values(5,'madhu','bvrm',22)

alter table emp add age int

select *from emp

select distinct(eloc),ename from emp

select top(2)* from emp --2 records fetch

select top(1)percent *from emp


----clauses
----where

select *from emp where age>18

select ename,eid from emp where age>18 and eid>2

select * from emp where (age>18 and eid>2) or ename='veeru'


update emp set age=24 where ename='veeru'

delete from emp where eid=1

select *from emp

---Order By clause

select * from emp order by ename asc
select *from emp order by ename desc


select * from emp where age>18 order by ename desc

select * from emp where age>18 order by ename desc,eid ---ename descending , eid --ascending order


select * from emp order by ename desc offset 2 rows---Offset is used to skip specific rows--in this example, 2 rows are skip

---In below query first skip 2 rows, remaining 3 rows--4 record will display --bcoz using fetch next
select * from emp order by ename desc offset 2 rows fetch next 1 rows only ---madhu 3
select *from emp order by ename desc

----Top n clause 
 
select top(3) eid,ename from emp where age>18 --first check condition and after take top recodrs

select top(60) percent *from emp where age>18---first check condtion some records fetch & after apply percentage


select *from emp

select top(4) with ties ename,eid from emp order by ename asc

update top(2) emp set eid=12 where age is null

delete top(2) from emp where age is null


select count(*) as totalemployee from emp

insert emp values(3,'veeru','hyd',22)

select eloc,count(*) from emp group by eloc

select eloc as city,sum(age)as totalage from emp group by eloc

select eloc,max(age) from emp group by eloc,ename

select eloc,'hi' as fixedvalue from emp group by eloc

----Having clause
select eloc from emp where eloc='bvrm' group by eloc


select eloc,sum(age) from emp group by eloc having eloc='bvrm'


select eloc,sum(age) as totalsum from emp where ename='madhu' group by eloc having eloc='bvrm'
select *from emp