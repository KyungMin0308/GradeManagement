# courses 데이터베이스 생성
create database courses default character set utf8 collate utf8_general_ci;


# 해당 테이블이 이미 존재한다면 drop
drop table if exists users;
drop table if exists authorities;
drop table if exists courses_and_grade;


# users
create table users (
    username varchar(128) not null,
    password varchar(128) not null,
    enabled int not null
) default character set utf8 collate utf8_general_ci;


# authorities
create table authorities (
    username varchar(128) not null,
    authority varchar(128) not null
) default character set utf8 collate utf8_general_ci;


# courses_and_grade
create table courses_and_grade (
    id bigint not null auto_increment,
    year int not null,
    semester int not null,
    subject varchar(128) not null,
    curriculum varchar(128) not null,
    credit int not null,
    grade varchar(2),
    primary key (id)
) default character set utf8 collate utf8_general_ci;