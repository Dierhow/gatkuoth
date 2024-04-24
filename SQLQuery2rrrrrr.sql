create table employee(fname text,lname text ,
ssn int primary key,bdata date ,sex char 
check(sex='M' or sex='F'),salary float check(salary >1500) NOT NULL,
supssn int foreign key references employee(ssn))
create table department(dname text not null,
dnumber int primary key,mgrssn int foreign key references employee(ssn),
mgrstartdate date)
Alter table employee
add dno int foreign key references department(dnumber)
SELECT * FROM employee
