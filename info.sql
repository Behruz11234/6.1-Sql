create table "user" (
  id serial primary key, 
  username varchar(150) not null,
  email varchar(200) unique not null,
  age int not null 
);

insert into users(username, email, age) values('Behruz', 'komilovbehruz0910@gmail.com', 19);('amir', 'amir12343@gmail.com', 19);('humoyun', 'humoyun1155@gmail.com', 19); 

 
create table "user" (
  id varchar primary key default gen_random_uuid(), 
  username varchar(150) not null,
  email varchar(200) unique not null,
  age int not null 
);

-- ADD COLUMN
alter table users add column password varchar;

-- Nomini o'zgartirish 
alter table users rename password to parol;

-- O'chirish
alter table users drop column parol;
 
-- get one
select from * users where username = 'alibek';

-- idni topish
select from * users where id = 2;

-- update
update users set age = 27 , email = 'aminboyevalibek077@gmail.com' where id = 2;

-- delete 
delete from users where id = 2;

-- userlarni xususiyati
\d+ users


