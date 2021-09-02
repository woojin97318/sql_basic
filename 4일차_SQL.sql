create table testClass(
    class varchar2(10),
    score number
);
insert into testClass values('A¹Ý',11);
insert into testClass values('A¹Ý',12);
insert into testClass values('A¹Ý',13);
insert into testClass values('B¹Ý',21);
insert into testClass values('B¹Ý',22);
insert into testClass values('B¹Ý',23);
insert into testClass values('1',31);
insert into testClass values('1',32);
insert into testClass values('1',33);
insert into testClass values('',40);

select * from testclass;

-- sum(): Æ©ÇÃÀÇ ÇÕÀ» ±¸ÇÔ
-- avg(): Æ©ÇÃÀÇ Æò±ÕÀ» ±¸ÇÔ
-- max(): Æ©ÇÃÀÇ ÃÖ´ñ°ªÀ» ±¸ÇÔ
-- min(): Æ©ÇÃÀÇ ÃÖ¼Ú°ªÀ» ±¸ÇÔ
-- count(): Æ©ÇÃÀÇ °¹¼ö¸¦ ±¸ÇÔ(null°ªÀº ¹èÁ¦)
select sum(score) from testclass;
select avg(score) from testclass;
select max(score), min(class) from testclass;
select count(class) from testclass;
select count(*) from testclass;

select class, sum(score) from testclass group by class;
select class, sum(score) from testclass group by class having sum(score) > 40;

-- ÄûÁî
select class, count(*) from testclass group by class;
select class, avg(score) from testclass group by class order by avg(score) desc;
select class, max(score), min(score) from testclass group by class;
--

create table testName(
    id varchar2(20),
    class varchar2(20)
);
insert into testName values('È«±æµ¿','A¹Ý');
insert into testName values('±è°³¶Ë','B¹Ý');
insert into testName values('°í±æµ¿','C¹Ý');

create table testLesson(
    id varchar2(20),
    lesson varchar2(20),
    score number
);
insert into testLesson values('È«±æµ¿','python',80);
insert into testLesson values('È«±æµ¿','java',90);
insert into testLesson values('È«±æµ¿','c¾ð¾î',70);
insert into testLesson values('±è°³¶Ë','server2012',70);
insert into testLesson values('±è°³¶Ë','linux',90);
insert into testLesson values('°í±æµ¿','jsp',100);

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
-- ÄûÁî
select N.id, N.class, L.lesson, L.score
from testname N inner join testlesson L
on N.id = L.id and N.id = 'È«±æµ¿';

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
insert into table01 values(10,'È«±æµ¿');
insert into table01 values(20,'±è°³¶Ë');
create table table02(
    num number(2),
    name varchar2(14)
);
insert into table02 values(10,'È«±æµ¿');
insert into table02 values(30,'°í±æµ¿');

select * from table01;
select * from table02;

select * from table01 inner join table02 on table01.num = table02.num;

select * from table01 left outer join table02 on table01.num = table02.num;
select * from table01 right outer join table02 on table01.num = table02.num;
select * from table01 full outer join table02 on table01.num = table02.num;

select * from table01 right outer join table02 using(num);

-- ÇÏÀ§ ÁúÀÇ(¼­ºê Äõ¸®)
select * from table01 where num = (select num from table01 where name = 'È«±æµ¿');