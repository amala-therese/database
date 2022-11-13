create database cabmngmnt;
use cabmngmnt;
create table cabdetails (reg_no int unique primary key,
cab_type varchar(200),
driver_id int not null);

create table user_register(username varchar(200) primary key unique,
user_id int  not null,
name varchar(50),
email varchar(200) unique ,
password varchar(40));
create table booking (username varchar(200) unique,

cab_id int,

booking_id int unique primary key,
travel_date date,
cab_from real,
cab_to real,
fare int not null
);
create table driver(driver_id int unique primary key,

name varchar(100),
licence_no int not null unique,
dob date ,
expiry_date date
);
alter table booking add constraint FK_cab_id foreign key(cab_id)references cabdetails(reg_no);
alter table driver add constraint FK_driver_id foreign key(driver_id)references driver(driver_id);
alter table booking add constraint FK_username foreign key(username)references user_register(username);

desc driver;
desc cabdetails;
desc user_register;
desc booking;



