--employee Table
select * from emp;

--Creating a Procedure
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


