select * from student;

select * from student where id = 1;
select * from student where kor > 80;
select * from student where kor != 99;
select * from student where math <= 79;

select * from student where kor >= 50 and math = 79;
select * from student where kor >= 50 or math = 79;
select * from student where not kor >= 54;

select * from student where kor >= 54 and kor <= 99;
select * from student where kor between 54 and 99;


create table test_number(
    num_ps number(5, 2),/*5: ÀüÃ¼ Å©±â, 2: ¼Ò¼öÁ¡ Å©±â*/
    num_p number(3),
    num number
);

insert into test_number values(1.123456, 1.123456, 1.123456);
insert into test_number values(123.123456, 1.123456, 1.123456);
insert into test_number values(1.123456, 234.12345, 1.123456);

select * from test_number;


create table test_date(
    my_date date
);

insert into test_date values(sysdate);
insert into test_date values('2021/07/12');

alter session set nls_date_format = 'YYYY/MM/DD HH:MI:SS';
insert into test_date values('2021/05/05 12:30:52');

select * from test_date where my_date < '2021/6/12';

select * from test_date;


create table test_char(
    ch char(5),
    vch varchar2(20)
);
insert into test_char values('1', '1');
insert into test_char values('1', '11111111111');
select lengthb(ch), lengthb(vch) from test_char;
select * from test_char;

create table employee(
    name varchar2(15),
    salary number,
    job varchar2(20),
    join_company date
);
insert into employee values('È«±æµ¿', 2000000, 'ÄÄÇ»ÅÍ', '2222/12/24');
alter session set nls_date_format = 'YYYY/MM/DD';
select * from employee;

delete from employee;

insert into employee values('¼³±îÄ¡',1800000,'»ï¼º','2017/10/24');
insert into employee values('·Î¹öÆ®',1850000,'¾ÖÇÃ','2019/01/04');
insert into employee values('°íµµ¸®',2200000,'¿¤Áö','2017/11/06');
insert into employee values('±è°³¶Ë',2500000,'SK','2017/04/14');
insert into employee values('¸®¿ì¶×',2410000,'»þ¿À¹Ì','2018/01/09');
insert into employee values('°­¹Î',1900000,'»ï¼º','2019/10/24');
insert into employee values('ÇÒ¸®',1800000,'¾ÖÇÃ','2019/12/04');
insert into employee values('½É½ÉÇØ',4630000,'¿¤Áö','2015/04/02');
insert into employee values('³î¾ÆÁà',2770000,'SK','2017/01/24');
insert into employee values('¿Õ¸¸µÎ',3650000,'»þ¿À¹Ì','2016/08/04');
insert into employee values('¸Ó¸®»¡',4210000,'»ï¼º','2015/03/18');
insert into employee values('¸¶¸®¿À',2720000,'¾ÖÇÃ','2017/01/04');
insert into employee values('ÃÖÄ¡¿ì',4320000,'¿¤Áö','2015/06/07');
insert into employee values('¾È±ò½Ó',3490000,'SK','2015/09/07');
insert into employee values('³¡Â¯',2200000,'»þ¿À¹Ì','2017/05/04');
insert into employee values('¸·Àå',1920000,'»ï¼º','2018/11/24');
insert into employee values('µå¶ó¸¶',3420000,'¾ÖÇÃ','2016/07/29');
insert into employee values('°³¶ËÀÌ',1800000,'¿¤Áö','2018/12/24');
insert into employee values('¸¶Æ÷±¸',2230000,'SK','2018/01/05');
insert into employee values('¼Ò°í±â',1800000,'»þ¿À¹Ì','2019/01/09');
insert into employee values('Â¥Àå¸é',2100000,'»ï¼º','2017/10/24');
insert into employee values('¼Ò°öÃ¢',2200000,'¾ÖÇÃ','2017/11/04');
insert into employee values('ÂüÀÌ½½',1950000,'¿¤Áö','2017/10/24');
insert into employee values('·ò¿ì¶×',1800000,'SK','2018/10/24');
insert into employee values('À§¸ÞÇÁ',1800000,'»þ¿À¹Ì','2019/12/07');
insert into employee values('ºÏ°æ½Ã',1880000,'»ï¼º','2018/11/14');
insert into employee values('½º¹Ì½º',1970000,'¾ÖÇÃ','2019/06/04');
insert into employee values('ÇÚµåÆù',7200000,'¿¤Áö','2010/01/27');
insert into employee values('ºò½ººñ',3570000,'SK','2015/02/17');
insert into employee values('³ë¶óÁà',3200000,'»þ¿À¹Ì','2015/11/24');
insert into employee values('»çÀÌ´Ù',2400000,'»ï¼º','2017/09/26');
insert into employee values('±è¸»ÀÌ',7000000,'¾ÖÇÃ','2010/01/21');
insert into employee values('¿Àµµµ¶',6230000,'¿¤Áö','2011/08/19');

insert into employee values('½ÓÁöµ·',3710000,'SK','2015/08/19');
insert into employee values('È­ÀåÁö',1770000,'»þ¿À¹Ì','2019/04/28');
insert into employee values('¼ÒÈ­±â',1920000,'»ï¼º','2019/10/07');
insert into employee values('¹ÚÈ¿½Å',2670000,'¾ÖÇÃ','2017/11/24');
insert into employee values('ÆÇºùºù',3120000,'¿¤Áö','2016/05/19');
insert into employee values('±èÀç¿í',4190000,'SK','2015/01/02');
insert into employee values('¼ÛÇý±³',4280000,'»þ¿À¹Ì','2015/01/02');
insert into employee values('¼ÛÁß±â',3700000,'»ï¼º','2016/02/17');
insert into employee values('¼ÕÈ«¹Î',2220000,'¾ÖÇÃ','2018/02/04');
insert into employee values('¹éÁ¾¿ø',2760000,'¿¤Áö','2017/10/14');
insert into employee values('¿ÀÃ¢¼®',2620000,'SK','2017/09/04');
insert into employee values('½ºÅÚ¶ó',2500000,'»þ¿À¹Ì','2017/11/20');
insert into employee values('¸ß½ºÀ£',1970000,'»ï¼º','2017/10/30');
insert into employee values('Á¶Çö',  2720000,'¾ÖÇÃ','2018/11/11');
insert into employee values('·ùÇöÁø',2600000,'¿¤Áö','2015/11/19');
insert into employee values('ÀºÁö¿ø',5670000,'SK','2017/10/16');
insert into employee values('ÀüÈ¿¼º',3750000,'»þ¿À¹Ì','2015/09/15');
insert into employee values('ÀÌÃ¤Àº',3400000,'»ï¼º','2016/02/09');
insert into employee values('ÃÖ°íºÀ',8900000,'¾ÖÇÃ','2010/01/04');
insert into employee values('±¤È­¹®',1860000,'¿¤Áö','2017/10/24');
insert into employee values('µ¿´ë¹®',1790000,'SK','2017/10/24');
insert into employee values('¼­´ë¹®',2880000,'»þ¿À¹Ì','2016/02/27');
insert into employee values('´ëÅë·É',2320000,'»ï¼º','2016/05/24');
insert into employee values('¿¹Áö¿ø',1780000,'¾ÖÇÃ','2019/01/09');
insert into employee values('Á¤¼Ò¹Î',2900000,'¿¤Áö','2016/10/22');
insert into employee values('¿ö³Ê¿ø',3000000,'SK','2015/10/10');
insert into employee values('ºÏÇÑ±º',3200000,'»þ¿À¹Ì','2015/11/11');
insert into employee values('³²ÇÑ±º',2500000,'»ï¼º','2016/12/19');
insert into employee values('Â¥Åõ¸®',1850000,'¾ÖÇÃ','2018/04/03');
insert into employee values('ÀÌ½Â±â',1900000,'¿¤Áö','2018/01/01');
insert into employee values('±âÂ÷±æ',1790000,'SK','2018/05/02');
insert into employee values('±æ°Å¸®',2700000,'»þ¿À¹Ì','2016/07/20');

--1¹ø
select * from employee where salary*12 >= 100000000;
--2¹ø
select name, join_company from employee where join_company < '2015/01/01';
--3¹ø
select * from employee where salary >= 2800000 and salary <= 3000000;
select * from employee where salary between 2800000 and 3000000;
--4¹ø
select * from employee where join_company >= '2015/01/01' and salary*12 >= 60000000;
--5¹ø
select * from employee where job in('»ï¼º', '¿¤Áö') and salary*12 >= 50000000;
select * from employee where (job = '»ï¼º' or job = '¿¤Áö') and salary*12 >= 50000000;

select * from employee where name like '±è%';
select * from employee where name like '%¶Ë';
select * from employee where name like '%ÀÌ%';

select * from employee order by join_company desc;
select * from employee order by join_company asc;

select * from employee order by join_company asc, salary desc;

select * from employee
where name like '%±è%' and salary*12 >= 30000000
order by job asc, salary desc;


create table testfunc(
    id number,
    num varchar2(20)
);
select * from testfunc;

insert into testfunc values(1, '34.5678');
select * from testfunc where id = 1;

-- round(x, y): x¼ýÀÚ¸¦ y¹øÂ° ¼Ò¼öÁ¡±îÁö ±¸ÇÔ(¹Ý¿Ã¸²o)
select round(num, 2) from testfunc where id = 1;
select round(num/2, 2) from testfunc where id = 1;

-- trunc(x, y): x¼ýÀÚ¸¦ y¹øÂ° ¼Ò¼öÁ¡±îÁö ±¸ÇÔ(¹Ý¿Ã¸²x)
select trunc(num, 2) from testfunc where id = 1;

-- mod(x, y): x%yÀÇ °ª
insert into testfunc values(2, '55');
select mod(num, 2) from testfunc where id = 2;

-- upper(): ¸ðµç ¹®ÀÚ¸¦ ´ë¹®ÀÚ·Î º¯È¯
-- lower(): ¸ðµç ¹®ÀÚ¸¦ ¼Ò¹®ÀÚ·Î º¯È¯
-- initcap(): ¸ðµç ¹®ÀÚÀÇ Ã¹ ¹øÂ°(°ø¹é ´ÙÀ½) ¹®ÀÚ¸¦ ´ë¹®ÀÚ·Î º¯È¯
insert into testfunc values(11, 'wellcome To oracle');
select * from testfunc where id = 11;
select upper(num) from testfunc where id = 11;
select lower(num) from testfunc where id = 11;
select initcap(num) from testfunc where id = 11;

-- ÄûÁî 1¹ø
select * from testfunc;

insert into testfunc values(3, '457');
insert into testfunc values(4, '97.1548');
insert into testfunc values(5, '15.48651');
insert into testfunc values(6, '5178.156');
insert into testfunc values(7, '5110156');
insert into testfunc values(8, '8542.548');
insert into testfunc values(9, '4512.0584');
insert into testfunc values(10, '4548');

select * from testfunc where mod(id, 2) = 1;
select id, round(num/2, 2) from testfunc where mod(id, 2) = 0;

-- ÄûÁî 2¹ø
create table testCompany(
  name varchar2(20),
  ¿¬ºÀ varchar2(20),
  class varchar2(20)
);
insert into testCompany values('hong gil dong_M','3600','Manager');
insert into testCompany values('kim gea ddong_M','2555','ManaGer');
insert into testCompany values('Go gil dong_M','2800','ManaGER');
insert into testCompany values('hong gil dong_E','3111','EmpLoyee');
insert into testCompany values('kim gea ddong_E','2600','EmpLoYee');
insert into testCompany values('Go gil dong_E','2950','employee');

select * from testcompany;

select * from testCompany where lower(class) = 'manager';
select * from testCompany where lower(class) = 'employee' and ¿¬ºÀ >= 2800;
select initcap(name), trunc(¿¬ºÀ/12, 0), class from testCompany;