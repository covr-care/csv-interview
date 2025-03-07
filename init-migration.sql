create database if not exists interview;

use interview;

create table if not exists employees (
  id varchar(255) primary key,
  first_name varchar(255),
  last_name varchar(255)
);

create table if not exists timeclock_data (
  id serial primary key,
  employee_id varchar(255) references employees(id),
  first_name varchar(255),
  last_name varchar(255),
  clock_in_datetime datetime,
  clock_out_datetime datetime
);
