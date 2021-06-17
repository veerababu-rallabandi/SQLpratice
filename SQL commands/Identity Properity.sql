----Identity properity

create table sample8(eid int identity(1,1),ename varchar(20));

insert into sample8 values('veeru')
insert sample8 values('srinu')

select *from sample8


create table sample9(id int ,ename varchar(20))

insert into sample9 values(1,'veeru')

--whenever identity is not mentioned while create table
---first execute
alter table sample9 drop column id

---second execute
alter table sample9 add id int identity(1,1)

insert sample9 values('veeru')



select *from sample9

---below three are equal--to get last identity
select SCOPE_IDENTITY()--last identity 

select @@IDENTITY

select IDENT_CURRENT('sample9')