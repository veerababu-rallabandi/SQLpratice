
--To create a new Login details

create login emp1 with password='123';


---DDL commands -create, Alter,

--how to create new database using CUI
create database Emp2;

use Emp2; ---automatically change above (To particular database)

---How to create new table in Emp2 database
create table Emp_details(id smallint,ename char(10),salaray money);

---To view structure of a table(Emp_details) below(not error clear above stmts automatically remove red mark)

--sp_help Emp_details;

--To change datatype and size of datatype
alter table Emp_details alter column ename varchar(35);

---How to add a new column to the table
alter table Emp_details add joindata date

---How to change a column name
sp_rename 'Emp_details.id','eid';

---How to change a table name
sp_rename 'Emp_details','E_details'


---To drop column from table

alter table E_details drop column joindata

select * from E_details

---To delete all rows from table
Truncate table E_details where eid=43--not allowed

Truncate table E_details

---To drop table along with data & structure
drop table E_details