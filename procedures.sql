
---Packages---
/* A package is a collection of procedures,variables,cursors and types
all these are grouped into single unit is called PACKAGES...
*/

---advantages of packages---
/* easy to manage, package supports Overloading---inside package u can defined 2 or more functions with same name, 
  impoves performance*/
  
  --create a package---
---1) package specification.
---2) package body.

---specification( declaration)---
set serveroutput on
create or replace package hr
as
procedure hire (e in number, n in varchar2, j in varchar2, s in number, d in number);
procedure fire (e in number);
end;

---body---

create or replace package body hr
as
procedure hire (e in number, n in varchar2, j in varchar2, s in number, d in number);
is 
begin 
insert into emp(empno, ename, job, sal, deptno) values (e,n,j,s,d);
commit;
end hire;
procedure fire (e in number);
is begin
delete from emp where empno = e;
commit;
end fire;
end;

--execute package---(one at a time)

execute hr.hire(555, 'AAA', 'Clerk', 5000, 20);

---execute fire ----

execute hr.fire(555);






