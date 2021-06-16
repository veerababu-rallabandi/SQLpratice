---TCL(Transaction control Language)

create table college(clgName varchar(20),clgloc varchar(20))

insert into college values('bvraju','bhimavaram')

update college set clgName='vishnu'

delete from college where clgName='vishnu'

Begin Transaction
rollback

--By Default the DML(insert/update/delete)operations are Autocommit operations in SQL server
---so using TCL commands

select *from college

--to run two stmt at time
Begin Transaction
insert into college values('bvraju','hyd')
---Once using with commit stmt, we cannot rollback
commit

ex2:

Begin Transaction
update college set clgloc='bhimavaram'
commit

---It is used to previous state without commit, we can rollback
Begin Transaction
rollback

Begin transaction
delete from college where clgloc='HYD'
delete from college where clgloc='kol'
save transaction s1
delete from college where clgloc='Bvrm'

select *from college

Begin transaction
rollback transaction s1


