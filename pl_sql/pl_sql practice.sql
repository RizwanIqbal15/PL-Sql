--This set command is used to run PL/SQL in Oracle server--

set serveroutput on 

--Declare command is used to initialize/declare the variables--

Declare
 a pls_integer := 10;
 b pls_integer := 20;
 c pls_integer;
 
 --Begin command is used to execution purpose like main program--
 
 begin
 c := a * b;
 DBMS_OUTPUT.PUT_LINE('multiplication of a * b is :' ||c );
 end;
 
---end of PL/SQL code-- 

Declare
user_name varchar2(255) Default  'Rizwan';
last_name varchar2(255):= 'Faisal';
begin

dbms_output.put_line(user_name);
dbms_output.put_line(last_name);
end;

-- IF ELSE program ---

Declare
a pls_integer := 90;
b pls_integer := 30;
c pls_integer := 20;
begin
if (a > b) then
dbms_output.put_line('value of a is greater than b');
end if;
dbms_output.put_line('value of b is less than a');
end ;

---English Vowels Program---

DECLARE 
a varchar2(255) := '??????';
BEGIN
IF UPPER(a) in ('A', 'E', 'I', '0', 'U' ) THEN
dbms_output.put_line('The characters are in English Vowels');
else 
dbms_output.put_line('Its a Hindi sentence');
END IF;
END;

---IF THEN ELSEIF Program ( Marks) ---

Declare 
marks pls_integer := 90;
begin
if (marks >= 70) then
dbms_output.put_line('passed with Grade A');
else if (marks >= 40 and marks <= 70) then
dbms_output.put_line('passed with Grade B');
else if (marks >= 35) then
dbms_output.put_line('passed with Grade C');
end if;
end if;
end if;
end;

---

Declare 
marks pls_integer := 25;
begin
if (marks >= 70) then
dbms_output.put_line('passed with Grade A');
else if (marks >= 40 and marks <= 70) then
dbms_output.put_line('passed with Grade B');
else if (marks >= 35) then
dbms_output.put_line('passed with Grade C');
else
dbms_output.put_line('Fail');
end if;
end if;
end if;
end;

---Nested IF Program---

set serveroutput on

Declare 
a pls_integer := 10;
b pls_integer := 100;
c pls_integer := 20;
begin
if (a > b) then
if (a > c) then
dbms_output.put_line('a is greatest');
else
dbms_output.put_line('c is greatest');
end if;
else if (b > c) then
dbms_output.put_line('b is greatest');
else
dbms_output.put_line('c is greatest');
end if;
end if;
end;


/*Set the release date of the movie and using conditionals find out its status.
A movie can have one of the following Status:


1. PLANNED: In Case the movie is yet to be released.
2. RELEASED: In Case the movie has been released.
3. BLOCKED: In all other cases.
*/
set serveroutput on
declare
movieDate varchar2(255) := '24 mar';
begin 
case movieDate
when '20 mar' then dbms_output.put_line('planned');
when '24 mar' then dbms_output.put_line('released');
when '26 mar' then dbms_output.put_line('blocked');

else dbms_output.put_line('No Date found !');
end case;
end;




