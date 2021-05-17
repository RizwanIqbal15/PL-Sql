--employee Table
select * from emp;

--Creating a Procedure
--Procedure MAY or MAY NOT Return Values
set SERVEROUTPUT ON

create or replace procedure Raise_salary(E IN number, AMT IN number, S OUT number)

--E is IN-parameter / IN means the taking number from calling program
--AMT is IN-Parameter /IN means the taking number from calling program
--S is OUT-parameter / OUT means sending updated salary to calling program
is
begin
update emp set sal = sal + AMT
where empno = E;
commit;
select sal into s from emp where empno = E;
end;

-- declaring a variables to receive value coming from procedure
variable K number;

select empno, sal from emp;


-- To execute the procedure

execute Raise_salary(7782, 1000, :k);

-- To check updated value

print : k

----User Defined Function
----Must Return the Values / by using return statement

set serveroutput on

create or replace function Calculation(a number, b number, op char) return number
is 
begin
if op = '+' then
then return(a+b);
else if op = '-' then
then return(a-b);
else if op = '*' then
then return(a*b);
else
return(a/b);
end if;
end;

select Calculation(10,20,'*') from dual;

---Cursor 
-- In order to process all the emp records ...cursor comes into picture..
---In Pl/sql whenever we want to process row by row the use CURSOR....

select * from emp;

/* steps to use cursor
1) declare cursor
2) open cursor
3) fetch records
4) close cursor
*/
---declaring cursor
cursor c1 is select * from emp

---open cursor
open c1;
--- data stores in PGA ( program global Area)

--- fetch records/ fetches one record at a time ...so add loop for multiple records...
fetch c1 into x,y,z;

---close cursor
close c1;

--cursor program

declare
cursor c1 is select ename,sal,job from emp;
vename emp.ename%type;
vsal emp.sal%type;
vjob emp.job%type;
begin
open c1;
loop
fetch c1 into vename,vsal,vjob;
exit when c1%notfound;
dbms_output.put_line(vename || '   ' || vsal ||'   ' || vjob);
end loop;
close c1;
end;


