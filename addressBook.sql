#UC 1
create database addressBookService;
use addressBookService;
#UC2
create table addressBook
(
firstName varchar(150) NOT NULL PRIMARY KEY ,
lastName varchar(150) NOT NULL,
address varchar(150) NOT NULL,
city varchar(150) NOT NULL,
state varchar(150) NOT NULL,
zip varchar(6) NOT NULL,
phone varchar(12) NOT NULL,
email varchar(150) NOT NULL
);
#UC3
insert into addressBook values("Shravya","P","krishnadhama","puttur","karnataka","574259","7338221810","shravya@gmail.com");
insert into addressBook values("Oreo","b","nestle","mangalore","karnataka","567895","9987654320","oreo@gmail.com");
#UC4
update addressBook set address="bangalore",city="bangalore",state="karnataka",zip="567895",phone="9987654320",email="oreo@gmail.com"
where firstName="Oreo" and lastName="b";
#UC5
delete from addressBook where firstName="Oreo" and lastName="b";
#UC6
select * from addressBook where city="mangalore";
select * from addressBook where state="karnataka";
#UC7
select count(*) from addressBook group by state;
#UC8
select * from addressBook where state="karnataka" order by firstName;
alter table addressBook add(newName varchar(150), relation varchar(150));
describe addressBook;
UPDATE addressBook SET newName="Oreo", relation="Family" where firstName="Oreo"; 
UPDATE addressBook SET newName="Shravya", relation="Friend" where firstName="Shravya"; 
insert into addressBook(firstName,lastName,address,city,state,zip,phone,email,newName,relation) values
("Ram","Evans","Guindy","Chennai","Tamil Nadu","234567","9835642354","ram@gmail.com","Ram","Colleague");
select * from addressBook;
ALTER TABLE addressBook
DROP COLUMN name;
ALTER TABLE addressBook
DROP COLUMN type;
select * from addressBook;
#UC10
Select count(*) from addressBook group by relation;