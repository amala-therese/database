create database flight_management;
use flight_management;
create table flights (flight_no int unique primary key,flight_name varchar(50),flight_desc text(200),flight_capacity int);
insert into flights  values ( 2001,'indigo','domestic',200),
( 2002,'air india','domestic',300),
( 2003,'emirates','international',150),
( 2004,'air china','international',250);
create table passenger (id int not null unique,
name varchar(100), 
username varchar(200),
email varchar(100) unique,
password varchar(50),
mobile int,
address text,dob date);
create table flight_schdl(id int not null unique primary key,
flight_from varchar(50),
flight_to varchar(70),
flight_date date ,
flight_time time, 
cost int not null ,
flight_no int ,
constraint FK_flights_schdl foreign key
(flight_no) references flights(flight_no ) on delete set null
);
create table booked_tkt (tkt_no int not null,
book_date date,
trvl_date date,
flight_no int  unique,
constraint FK_flights_bkdtkt foreign key
(flight_no) references flights(flight_no ) on delete set null,

flight_from varchar(50),
flight_to varchar(70),
flight_time time,
boarding_time time,
flight_seat int unique not null,
passenger_id int,
constraint FK_booktkt_passengerid foreign key
(passenger_id) references passenger(id ) on delete set null);
desc flight_schdl;
