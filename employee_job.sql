sql

-- Database Creation
create database company;

--using database
use company;

-- creating table Employee
create table employee
    -> (Employeeid varchar(5) primary key,
    ->  Name varchar(30),
    ->  sales integer,
    ->  JobID integer);

-- creating table job
create table job
    -> (JobID integer,
    ->  JobTitle varchar(20),
    ->  Salary integer);

-- inserting values into employee
insert into employee values
    -> ("E1","Sumit Sinha",1100000,102),
    -> ("E2","Vijay Singh Tomar",1300000,101),
    -> ("E3","Ajay Rajpal",1400000,103),
    -> ("E4","Mohit Ramnani",1250000,102),
    -> ("E5","Shailja Singh",1450000,103);

--inserting values into job
insert into job values
    -> (101,"President",200000),
    -> (102,"Vice President",125000),
    -> (103,"Admin Assistant",80000),
    -> (104,"Accounting Manager",70000),
    -> (105,"Accountant",65000),
    -> (106,"Sales Manager",80000);

-- Query 1: To Display employee ids, names of employees, jobids with corresponding job titles
 Select Employee.Employeeid,Employee.Name,Employee.JobID,Job.JobTitle
    -> From Employee,Job
    -> where Employee.JobID=Job.JobID;

-- Query 2: To display names of employees,sales and corresponding JobTitles who have achieved sales more than 1300000
select e.name,e.sales,j.jobtitle
    -> from employee as e,job as j
    -> where e.JobId=j.JobId and sales>1300000;

-- Query 3: To Display names and corresponding job titles who have "SINGH" (anywhere) in thier names.
select e.name,j.jobtitle
    -> from employee as e,job as j
    -> where e.jobid=j.jobid and name like"%Singh%";

--Query 4: write a sql command to change the jobid to 104 of the employee wit id E4 in the table employee
update employee
    -> set jobid=104
    -> where employeeid="E4";

--Query 5: write a query to display the sum, average,highest and lowest salary of the employee
select sum(salary),avg(salary),max(salary),min(salary)
    -> from job;
