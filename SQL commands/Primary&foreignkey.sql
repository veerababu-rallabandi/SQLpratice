---Primary key & Foreign key

create table Department(Deptno int primary key,DName varchar(20))---It treated as parenct table

insert Department values(10,'computer'),(20,'science'),(30,'Maths'),(40,'English')



create table Stu(stid int,stName varchar(20),Deptno int Foreign key references Department(Deptno))---It's treated as child table

insert into Stu values(13,'srinu',10)---allowed
insert into Stu values(43,'veeru',20)--allowed
insert into Stu values(51,'mahesh',30)---allowed
insert into Stu values(33,'ravi',40)---allowed

insert into Stu values(45,'venkat',50)--Not allowed(parent has Deptno -10,20,30,40 --only allow these Deptno numbers not others)


select *from Department
select *from Stu