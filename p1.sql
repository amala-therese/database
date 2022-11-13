create database experion;
use experion;
create table students ( name varchar(20) not null , 
email varchar(50) not null,
age int,
address varchar(60),
id int );


desc students;
insert into students values('brigu','abc@gmail.com',30,'idukki'),
('aish','abc@gmail.com',20,'ekm'),
('amala','abc@gmail.com',22,'idukki');


select   * from students; 
select * from students where age = 22;
-- desc students;
-- select  * from students where address in ('idukki','ekm
-- --  select * from students where  22<age<25;
-- desc students;
-- select * from students order by age desc;
-- select  distinct address from students;
-- select max(age) from students;
-- select * from students where age = (select max(age) fro

-- select name as fullName from students;
update students set age = 23 where name = 'aish'; 






