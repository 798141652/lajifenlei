use app;
create table user(
userID varchar(20) not null primary key,
userName varchar(50) not null,
passWord varchar(20) not null

);
create table star(
userID varchar(20) not null primary key,
starNum int(11) not null
);
create table searchHistory(
userID varchar(20) not null,
sName varchar(50) not null
);
create table searchNum(
sName varchar(50) not null,
count int(11) not null
)