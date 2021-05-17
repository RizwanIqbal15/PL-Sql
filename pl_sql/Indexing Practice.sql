select * from persons
union
select * from regions;

alter table persons
drop column mobile_no;

alter table persons
add region_id int;

insert into persons(region_id) values(2);
update persons 
set region_id = 2
where person_id = 103;

select p.person_id, p.city, p.person_name, r.region_name
from persons p
inner join regions r on p.region_id = r.region_id;

desc persons;

create index indx_name on persons(mobile_no);

drop index indx_name;

-- CREATEING INDEX 
CREATE INDEX person_first_name_idx
ON person(first_name);

 

-- Dropping Index
drop index person_first_name_idx;

 

-- Practice Index
select count(*) from person
where first_name = 'Vina';

 

select count(*) from person
where last_name = 'Matthewes' ;

 

select count(*) from person
where first_name = 'Valeria'
AND last_name = 'Matthewes';
 