create database DSML;
use dsml;
create table managers(
manager_id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50),
dob date,
age int,check(age>=18),
last_update date default(current_date),
gender char(1),check (gender in ('m','f')),
department varchar(50),
salary decimal(10,2) check(salary>0);

desc managers;
alter table managers
add manager_id int auto_increment primary key;

desc managers;

insert into managers
values
('arhu','anu','1992-02-02','32','2025-06-19','f','IT','15000',default),
('hari','mnn','1992-03-05','35','2025-06-19','m','cargo','22000',default),
('asif','aar','1992-02-026','36','2025-06-19','m','IT','15000',default),
('danush','kap','1992-02-12','42','2025-06-19','m','admin','21000',default),
('chaki','kumar','1992-05-02','40','2025-06-19','f','audit','25800',default),
('chinju','jose','1992-03-01','32','2025-06-19','f','hr','36210',default),
('dev','lok','1992-05-05','20','2025-06-19','m','ceo','500000',default),
('kippo','dar','1992-07-07','35','2025-06-19','f','ccs','12400',default),
('manu','das','1992-08-08','33','2025-06-19','m','cleaning','8000',default),
('chandru','gopi','1992-10-10','34','2025-06-19','m','security','10000',default);

select * from managers;

select first_name and dob from managers where manager_id = 5;
select * from managers where not first_name = 'chinju';
select first_name , salary*12 from managers;
select * from managers where department ='IT' and salary>= '10000';
select * from managers where salary between 30000 and 60000;


