use app;
create table advice(
ID char not null,
msg varchar(100) not null,
subTime time  not null
);
create table gameInfo(
ID int(11) not null,
sName varchar(50) not null,
rightScore int(11) not null
);
create table bumInfo(
ID int(11) not null,
sName varchar(50) not null,
errorScore int(11) not null
);

