---DQL/DRL commands

create table student(id tinyint,sname varchar(20),branch varchar(20))

insert student values(43,'veerababu','MCA')

---without condition
select *from student

---with condition
select *from student where branch='MCA'

select sname from student where id=43