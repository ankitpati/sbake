drop database if exists sbake;
create database sbake;
use sbake;

create table config (
    kiy char(100) primary key, /* kiy: deliberate mis-spelling of key */
    val char(255) not null
);

create table user (
    username char(100) primary key,
    password char(255) not null,
    admin enum('N', 'Y') default 'N' not null
);

