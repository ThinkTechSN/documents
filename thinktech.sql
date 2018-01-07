drop database IF EXISTS thinktech;

create database thinktech;

use thinktech;

drop table IF EXISTS projects;

create table projects(id int AUTO_INCREMENT PRIMARY KEY,subject varchar(100) not null,service varchar(100) not null,
plan varchar(100), description text, priority varchar(30) default "normal" , date TIMESTAMP DEFAULT NOW(), status varchar(30) default "stand by" not null,duration int default 3,progression int default 0, user_id int not null,structure_id int not null);

drop table IF EXISTS tasks;

create table tasks(id int AUTO_INCREMENT PRIMARY KEY,name varchar(200) not null,description text);

insert into tasks(name,description) values("Contrat et Caution","cette phase intiale établit la relation légale qui vous lie à ThinkTech");
insert into tasks(name,description) values("Traitement","cette phase est celle où l'équipe technique prend en charge votre projet");
insert into tasks(name,description) values("Analyse du projet","cette phase est celle de l'analyse de votre projet pour une meilleure compréhension des objectifs");
insert into tasks(name,description) values("Définition des fonctionnalités","cette phase est celle de la définition des fonctionnalités du produit");
insert into tasks(name,description) values("Conception de l'interface","cette phase est celle de la conception de l'interface utilisateur");
insert into tasks(name,description) values("Développement des fonctionnalités","cette phase est celle du développement des fonctionnalités du produit");
insert into tasks(name,description) values("Tests","cette phase permet de tester les fonctionnalités du produit");
insert into tasks(name,description) values("Validation","cette phase est celle de la validation des fonctionnalités du produit");
insert into tasks(name,description) values("Livraison","cette phase finale est celle de la livraison du produit");

drop table IF EXISTS projects_tasks;

create table projects_tasks(id int AUTO_INCREMENT PRIMARY KEY,priority varchar(30) default "normal" not null, date TIMESTAMP DEFAULT NOW(), duration int, status varchar(30) default "stand by" ,progression int default 0, task_id int not null,project_id int not null);

drop table IF EXISTS projects_comments;

create table projects_comments(id int AUTO_INCREMENT PRIMARY KEY,message text not null,date TIMESTAMP DEFAULT NOW(),project_id int not null,createdBy int not null);

drop table IF EXISTS documents;

create table documents(id int AUTO_INCREMENT PRIMARY KEY,name varchar(300) not null,date TIMESTAMP DEFAULT NOW(),project_id int not null,createdBy int not null);

drop table IF EXISTS tickets;

create table tickets(id int AUTO_INCREMENT PRIMARY KEY,subject varchar(100) not null,service varchar(100) not null,
message text not null, priority varchar(30) default "normal" not null, date TIMESTAMP DEFAULT NOW(), status varchar(30) default "stand by",progression int default 0, user_id int not null,structure_id int not null);

drop table IF EXISTS tickets_comments;

create table tickets_comments(id int AUTO_INCREMENT PRIMARY KEY,message text not null,date TIMESTAMP DEFAULT NOW(),ticket_id int not null,createdBy int not null);

drop table IF EXISTS messages;

create table messages(id int AUTO_INCREMENT PRIMARY KEY,subject varchar(200) not null,
message text not null, date TIMESTAMP DEFAULT NOW(), unread boolean default true, user_id int not null,structure_id int not null);

drop table IF EXISTS bills;

create table bills(id int AUTO_INCREMENT PRIMARY KEY,fee varchar(200) not null,
date TIMESTAMP DEFAULT NOW(), status varchar(30) default "stand by",amount int not null,paidOn TIMESTAMP null,paidWith varchar(200),project_id int not null);

drop table IF EXISTS structures;

create table structures(id int AUTO_INCREMENT PRIMARY KEY, name varchar(300),acronym varchar(30),business varchar(100),size varchar(10) default "small",state varchar(100),
country varchar(200),city varchar(200),location varchar(200),telephone varchar(60),email varchar(100),bp varchar(60),fax varchar(60),website varchar(200),ninea varchar(100));

insert into structures(name,ninea) values("ThinkTech","4589887");

drop table IF EXISTS users;

create table users(id int AUTO_INCREMENT PRIMARY KEY, name varchar(300) not null,email varchar(100) not null, password varchar(100) not null,
profession varchar(100),role varchar(100) not null,telephone varchar(100),owner boolean default false,structure_id int not null);

drop table IF EXISTS users;

create table users(id int AUTO_INCREMENT PRIMARY KEY, name varchar(300) not null,email varchar(100) not null, password varchar(100) not null,
profession varchar(100),role varchar(100) not null,telephone varchar(100),owner boolean default false,structure_id int not null);

insert into users(name,email,password,profession,role,telephone,structure_id) values("Mamadou Lamine Ba","lamine.ba@thinktech.sn","passer","CEO","administrateur","774125559",1);
insert into users(name,email,password,profession,role,telephone,structure_id) values("Pape Babacar Ba","pbb@thinktech.sn","passer","CTO","administrateur","775593264",1);

