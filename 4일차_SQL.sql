create table testClass(
    class varchar2(10),
    score number
);
insert into testClass values('A��',11);
insert into testClass values('A��',12);
insert into testClass values('A��',13);
insert into testClass values('B��',21);
insert into testClass values('B��',22);
insert into testClass values('B��',23);
insert into testClass values('1',31);
insert into testClass values('1',32);
insert into testClass values('1',33);
insert into testClass values('',40);

select * from testclass;

-- sum(): Ʃ���� ���� ����
-- avg(): Ʃ���� ����� ����
-- max(): Ʃ���� �ִ��� ����
-- min(): Ʃ���� �ּڰ��� ����
-- count(): Ʃ���� ������ ����(null���� ����)
select sum(score) from testclass;
select avg(score) from testclass;
select max(score), min(class) from testclass;
select count(class) from testclass;
select count(*) from testclass;

select class, sum(score) from testclass group by class;
select class, sum(score) from testclass group by class having sum(score) > 40;

-- ����
select class, count(*) from testclass group by class;
select class, avg(score) from testclass group by class order by avg(score) desc;
select class, max(score), min(score) from testclass group by class;
--

create table testName(
    id varchar2(20),
    class varchar2(20)
);
insert into testName values('ȫ�浿','A��');
insert into testName values('�谳��','B��');
insert into testName values('��浿','C��');

create table testLesson(
    id varchar2(20),
    lesson varchar2(20),
    score number
);
insert into testLesson values('ȫ�浿','python',80);
insert into testLesson values('ȫ�浿','java',90);
insert into testLesson values('ȫ�浿','c���',70);
insert into testLesson values('�谳��','server2012',70);
insert into testLesson values('�谳��','linux',90);
insert into testLesson values('��浿','jsp',100);

select * from testname;
select * from testlesson;

select * from testname, testlesson;

select * from testname, testlesson where testname.id = testlesson.id;

select * from testname N, testlesson L where N.id = L.id;

select * from testname N inner join testlesson L on N.id = L.id;

/*
create synonym N for testName;
create synonym L for testLesson;
drop synonym N;
drop synonym L;
*/
-- ����
select N.id, N.class, L.lesson, L.score
from testname N inner join testlesson L
on N.id = L.id and N.id = 'ȫ�浿';

select N.id, N.class, sum(L.score), avg(L.score)
from testname N inner join testlesson L
on N.id = L.id
group by N.id, N.class
order by N.class asc;
--
select * from testName natural join testlesson;
select N.id, N.class, l.lesson, l.score from testName N inner join testLesson L on N.id = L.id;

-- outer join
create table table01(
    num number(2),
    name varchar2(14)
);
insert into table01 values(10,'ȫ�浿');
insert into table01 values(20,'�谳��');
create table table02(
    num number(2),
    name varchar2(14)
);
insert into table02 values(10,'ȫ�浿');
insert into table02 values(30,'��浿');

select * from table01;
select * from table02;

select * from table01 inner join table02 on table01.num = table02.num;

select * from table01 left outer join table02 on table01.num = table02.num;
select * from table01 right outer join table02 on table01.num = table02.num;
select * from table01 full outer join table02 on table01.num = table02.num;

select * from table01 right outer join table02 using(num);

-- ���� ����(���� ����)
select * from table01 where num = (select num from table01 where name = 'ȫ�浿');