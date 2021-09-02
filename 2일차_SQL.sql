create table person(
num number,
name varchar2(10),
birth varchar2(10),
tel varchar(20),
primary key(num)
);

desc person;
select * from person;

insert into person values(1000,'전우진','19970318','010-4426-4635');
insert into person values(1001,'박승재','19970808','010-5215-9073');
insert into person(name, birth, num, tel) values('조희원', '900606', 1002, '010-xxxx-xxxx');

select * from person where num = 1000;
select name, birth from person where num = 1000;

delete from person where name = '전우진';

update person set name = '개똥이';
update person set name = '고길동', tel='010-xxxx-1234' where num = 1001;
commit;

delete from person;
rollback;

delete from person where num = 1001;
commit;

update person set name='김길이';
rollback;

select * from person;


create table student(
id number(10) primary key,
name varchar2(10),
kor varchar2(5),
eng varchar2(5),
math varchar2(5)
);

desc student;
select * from student;

insert into student values(1, '김영희','54','70','90');
insert into student values(2, '김철수','50','81','79');
insert into student values(3, '전우진','80','99','67');

update student set kor = '99', eng = '81' where id = 3;
commit;

delete from student;
rollback;

select * from student;


create table test_table(
num number
);

desc test_table;
select * from test_table;

alter table test_table add name varchar(20);

insert into test_table values(1, '222');

alter table test_table add name2 varchar(20);
alter table test_table add name3 varchar(20) DEFAULT 'nan';
desc test_table;

alter table test_table modify(name2 number);

alter table test_table drop column name1;

alter table test_table rename column num to numtototo;

drop table test_table;

/*
drop user 계정명 cascade;
CASCADE: 개체에 연계되어 있는 테이블이나 정보 등 연계삭제
*/
create user test123 identified by 1234;
select * from all_users;
drop user test123 cascade;
select * from all_users;