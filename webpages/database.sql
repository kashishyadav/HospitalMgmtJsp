create database hospitaljsp;

use hospitaljsp;

 create table admin(
adminname varchar(30),
password varchar(10),
primary key (adminname));

create table doctor(
doctorid int(5) primary key auto_increment,
doctorname varchar(30),
specialization varchar(50),
contact varchar(10));

create table patient(
patientid int(5) primary key auto_increment,
patientname varchar(30),
patientadress varchar(50),
gender varchar(50),
contact varchar(10));

create table appointment(
appointmentid int(5) primary key auto_increment,
doctor varchar(30),
patient varchar(30),
date varchar(20),
time varchar(20));
