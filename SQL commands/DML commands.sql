---DML commands

--To insert new values into a table
use Emp2;

insert into Emp_details values(11,'mahesh')--not allowed(pass 3 values)

--Method1
insert into Emp_details values(11,'mahesh',2500.9)--allowed

---Method2
insert into Emp_details (id,ename)values(43,'veeru');

---without into keyword
insert Emp_details values(13,'madhu',2400.99);

---Method2 without into keyword
insert Emp_details (id,salaray)values(51,2345.00)

---updata specific row data in a table
update Emp_details set salaray=25000 where id=43

update Emp_details set ename='sampath' where ename is Null

---To delete specific row
delete from Emp_details where ename='veeru'

delete from Emp_details where id is Null

select * from Emp_details


