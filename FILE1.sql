-- FOR CREATE DATABASE.
create database collage;

-- FOR DELETE DATABASE.
-- drop database collage;

-- FOR USE DATABASE.
use collage;

-- FOR CREATE TABLE.
create table student(
stdid int primary key,
stdname varchar(10) not null,
stdage int not null
);

-- FOR INSERT RECORD 
insert into student(stdid,stdname,stdage) values(1,'salman',23);
insert into student(stdid,stdname,stdage) values(2,'akhsay',35);

-- FOR SHOW DATA.
select * from student;

show databases;
show tables;

-- FOR DELETE TABLE.
drop table student;

-- ADD MULTIPLE VALUE IN TABLE AT ONE TIME.
insert into student(stdid,stdname,stdage) values (3,'shahrukh',65),
(4,'hritik',34),
(5,'yash',69),
(6,'prabhas',45);

-- SHOW A SINGLE COLUMN FROM TABLE.
select stdid from student;

-- ADD COLUMN IN TABLE.
select * from student;

-- REMOVE COLUMN FROM TABLE 
alter table student drop column stdemail;

alter table student add stdemail varchar(20);

-- primary key & foreign key

--  constraint (unique , not null , primary key)

-- call store procedure

-- simple 
call demo;

-- parameterised 
call check_age(23);

-- return values
call count_record(@record);

select @record as totalRecord;










