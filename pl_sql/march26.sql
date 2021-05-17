create table tbldepartment
(
deptid number(10) NOT NULL Primary key,
deptname varchar(255) 
);

drop table tbldepartment;

create table tblemployee
(
empid number(10) NOT NULL primary key,
empname varchar(255),
managerid number,
deptid number,
salary number,
constraint fk_dept foreign key(deptid) references tbldepartment(deptid)
);
desc tbldepartment;

insert into tbldepartment values (2, 'ADMIN');

select empname, salary, count(*) as count
from tblemployee
group by empname,salary
having count(*) > 1; 

select e.empname, e.managerid, m.empname
from tblemployee e
left join tblemployee m on m.empid = e.managerid;

select * from tblemployee;

select * from tblemployee 
where salary in (select max(salary) as salary from tblemployee where salary < (select max(salary) as salary from tblemployee));

select max(salary) as salary from tblemployee
where salary < (select max(salary) as salary from tblemployee);

select 'sachin'|| 'kapil' || 'Gavaskar' from tblemployee;

select substr('computer',2,4) from dual;

select EXTRACT(YEAR FROM sysdate) from dual;

alter session set nls_date_format = 'DD-MONTH-YYYY';

select * from tblemployee 
where soundex(empname) = soundex('Sourav');

select salary,
  case salary 
         when 6000 then 'LOW'
         when 10000 then 'HIGH'
         else 'MEDIUM'
  end case
  from tblemployee;   
  
  select salary from tblemployee where salary = (select max(salary) from tblemployee where empname like '%s');
  
  select 





select empname, salary from tblemployee e1 where 3 - 1 = (select count(distinct salary) from tblemployee e2 where e2.salary > e1.salary);
 select empname, salary from tblemployee e1 where 3 - 1 = (select count(distinct salary) from tblemployee e2 where e2.salary < e1.salary);
select empname, salary
from tblemployee
group by salary, empname;


insert into tblemployee values (1,'Sachin' , 3 , 1 , 6000);
insert into tblemployee values (2,'Rahul' , 3 , 1 , 7000);
insert into tblemployee values (3,'Sourav' , 5 , 1 , 10000);
insert into tblemployee values (4,'Kapil' , 5 , 1 , 8000);
insert into tblemployee values (5,'Gavaskar' , 0 , 1 , 9000);
insert into tblemployee values (6,'Mohit' , 7 , 2 , 6000);
insert into tblemployee values (7,'Paras' , 0 , 2 , 8000);
insert into tblemployee values (8,'Sourav' , 5 , 1 , 10000);
insert into tblemployee values (9,'Paras' , 5 , 1 , 8000);
insert into tblemployee values (10,'Paras' , 5 , 1 , 10000);



select empname,salary from tblemployee
group by salary,empname;



