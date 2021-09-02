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
    num_ps number(5, 2),/*5: ��ü ũ��, 2: �Ҽ��� ũ��*/
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
insert into employee values('ȫ�浿', 2000000, '��ǻ��', '2222/12/24');
alter session set nls_date_format = 'YYYY/MM/DD';
select * from employee;

delete from employee;

insert into employee values('����ġ',1800000,'�Ｚ','2017/10/24');
insert into employee values('�ι�Ʈ',1850000,'����','2019/01/04');
insert into employee values('����',2200000,'����','2017/11/06');
insert into employee values('�谳��',2500000,'SK','2017/04/14');
insert into employee values('�����',2410000,'������','2018/01/09');
insert into employee values('����',1900000,'�Ｚ','2019/10/24');
insert into employee values('�Ҹ�',1800000,'����','2019/12/04');
insert into employee values('�ɽ���',4630000,'����','2015/04/02');
insert into employee values('�����',2770000,'SK','2017/01/24');
insert into employee values('�ո���',3650000,'������','2016/08/04');
insert into employee values('�Ӹ���',4210000,'�Ｚ','2015/03/18');
insert into employee values('������',2720000,'����','2017/01/04');
insert into employee values('��ġ��',4320000,'����','2015/06/07');
insert into employee values('�ȱ��',3490000,'SK','2015/09/07');
insert into employee values('��¯',2200000,'������','2017/05/04');
insert into employee values('����',1920000,'�Ｚ','2018/11/24');
insert into employee values('���',3420000,'����','2016/07/29');
insert into employee values('������',1800000,'����','2018/12/24');
insert into employee values('������',2230000,'SK','2018/01/05');
insert into employee values('�Ұ��',1800000,'������','2019/01/09');
insert into employee values('¥���',2100000,'�Ｚ','2017/10/24');
insert into employee values('�Ұ�â',2200000,'����','2017/11/04');
insert into employee values('���̽�',1950000,'����','2017/10/24');
insert into employee values('����',1800000,'SK','2018/10/24');
insert into employee values('������',1800000,'������','2019/12/07');
insert into employee values('�ϰ��',1880000,'�Ｚ','2018/11/14');
insert into employee values('���̽�',1970000,'����','2019/06/04');
insert into employee values('�ڵ���',7200000,'����','2010/01/27');
insert into employee values('�򽺺�',3570000,'SK','2015/02/17');
insert into employee values('�����',3200000,'������','2015/11/24');
insert into employee values('���̴�',2400000,'�Ｚ','2017/09/26');
insert into employee values('�踻��',7000000,'����','2010/01/21');
insert into employee values('������',6230000,'����','2011/08/19');

insert into employee values('������',3710000,'SK','2015/08/19');
insert into employee values('ȭ����',1770000,'������','2019/04/28');
insert into employee values('��ȭ��',1920000,'�Ｚ','2019/10/07');
insert into employee values('��ȿ��',2670000,'����','2017/11/24');
insert into employee values('�Ǻ���',3120000,'����','2016/05/19');
insert into employee values('�����',4190000,'SK','2015/01/02');
insert into employee values('������',4280000,'������','2015/01/02');
insert into employee values('���߱�',3700000,'�Ｚ','2016/02/17');
insert into employee values('��ȫ��',2220000,'����','2018/02/04');
insert into employee values('������',2760000,'����','2017/10/14');
insert into employee values('��â��',2620000,'SK','2017/09/04');
insert into employee values('���ڶ�',2500000,'������','2017/11/20');
insert into employee values('�߽���',1970000,'�Ｚ','2017/10/30');
insert into employee values('����',  2720000,'����','2018/11/11');
insert into employee values('������',2600000,'����','2015/11/19');
insert into employee values('������',5670000,'SK','2017/10/16');
insert into employee values('��ȿ��',3750000,'������','2015/09/15');
insert into employee values('��ä��',3400000,'�Ｚ','2016/02/09');
insert into employee values('�ְ��',8900000,'����','2010/01/04');
insert into employee values('��ȭ��',1860000,'����','2017/10/24');
insert into employee values('���빮',1790000,'SK','2017/10/24');
insert into employee values('���빮',2880000,'������','2016/02/27');
insert into employee values('�����',2320000,'�Ｚ','2016/05/24');
insert into employee values('������',1780000,'����','2019/01/09');
insert into employee values('���ҹ�',2900000,'����','2016/10/22');
insert into employee values('���ʿ�',3000000,'SK','2015/10/10');
insert into employee values('���ѱ�',3200000,'������','2015/11/11');
insert into employee values('���ѱ�',2500000,'�Ｚ','2016/12/19');
insert into employee values('¥����',1850000,'����','2018/04/03');
insert into employee values('�̽±�',1900000,'����','2018/01/01');
insert into employee values('������',1790000,'SK','2018/05/02');
insert into employee values('��Ÿ�',2700000,'������','2016/07/20');

--1��
select * from employee where salary*12 >= 100000000;
--2��
select name, join_company from employee where join_company < '2015/01/01';
--3��
select * from employee where salary >= 2800000 and salary <= 3000000;
select * from employee where salary between 2800000 and 3000000;
--4��
select * from employee where join_company >= '2015/01/01' and salary*12 >= 60000000;
--5��
select * from employee where job in('�Ｚ', '����') and salary*12 >= 50000000;
select * from employee where (job = '�Ｚ' or job = '����') and salary*12 >= 50000000;

select * from employee where name like '��%';
select * from employee where name like '%��';
select * from employee where name like '%��%';

select * from employee order by join_company desc;
select * from employee order by join_company asc;

select * from employee order by join_company asc, salary desc;

select * from employee
where name like '%��%' and salary*12 >= 30000000
order by job asc, salary desc;


create table testfunc(
    id number,
    num varchar2(20)
);
select * from testfunc;

insert into testfunc values(1, '34.5678');
select * from testfunc where id = 1;

-- round(x, y): x���ڸ� y��° �Ҽ������� ����(�ݿø�o)
select round(num, 2) from testfunc where id = 1;
select round(num/2, 2) from testfunc where id = 1;

-- trunc(x, y): x���ڸ� y��° �Ҽ������� ����(�ݿø�x)
select trunc(num, 2) from testfunc where id = 1;

-- mod(x, y): x%y�� ��
insert into testfunc values(2, '55');
select mod(num, 2) from testfunc where id = 2;

-- upper(): ��� ���ڸ� �빮�ڷ� ��ȯ
-- lower(): ��� ���ڸ� �ҹ��ڷ� ��ȯ
-- initcap(): ��� ������ ù ��°(���� ����) ���ڸ� �빮�ڷ� ��ȯ
insert into testfunc values(11, 'wellcome To oracle');
select * from testfunc where id = 11;
select upper(num) from testfunc where id = 11;
select lower(num) from testfunc where id = 11;
select initcap(num) from testfunc where id = 11;

-- ���� 1��
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

-- ���� 2��
create table testCompany(
  name varchar2(20),
  ���� varchar2(20),
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
select * from testCompany where lower(class) = 'employee' and ���� >= 2800;
select initcap(name), trunc(����/12, 0), class from testCompany;