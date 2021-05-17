create table persons
(
person_id int,
person_name varchar(250),
mobile_no int,
city varchar(250)
);

insert into persons values(106, 'Virat', 0987654321, 'Punjab');
insert into persons values(107, 'Salman', 7867861234, 'Ajmer');
insert into persons values(108, 'Flintoff', 0099887766, 'Norway');
insert into persons values(109, 'Symonds', 4455663322, 'Kerala');


select Person_name from persons
where person_name between 'Rajesh' and 'Smith'
order by person_name;

select location_id from warehouses;
union all
select City from persons;

update persons 
set person_name = 'David'
where person_id= 102;

alter table persons
drop column address;

desc persons;

create index idx_name on persons(person_id);