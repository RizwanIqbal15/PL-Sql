
---Multiplication of 5 ----

set SERVEROUTPUT ON

declare
a pls_integer := 5;
b pls_integer := 1;

begin
for b in 1..10 loop
dbms_output.put_line(a || '*' || b || '=' || a*b);
end loop;
end;

---Reverse Program ---
DECLARE 
  a number(2) ;

BEGIN
  FOR a IN Reverse 10 .. 20 LOOP
    dbms_output.put_line(a) ;
  END LOOP ;
END ;

---Reverse of multiplication of 5 ---

declare
a pls_integer := 5;
b pls_integer := 1;

begin
for b in reverse 1..10 loop
dbms_output.put_line(a ||' * ' || b || ' = ' || a*b);
end loop;
end;

--- practice queries ----

declare
a pls_integer := 0;
b pls_integer(2);

begin
for b in 1..10 loop
dbms_output.put_line(a || '+' || b || '=' || a+b);
end loop;
end;

---Print all the number which are divisible by 2 and 3 between 1 nd 100

declare 
x pls_integer;

begin
for x in 1..100 loop
if MOD(x,3) = 0 and MOD(x,2) = 0 then
dbms_output.put_line('Divisible by 2 and 3 : ' || x );
end if;
end loop;
end;


