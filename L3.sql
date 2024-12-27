제1과제 			비번호 : ( A01 )

1-1) 
create table tbl_pgm_04 (
pgmid char(4) NOT NULL PRIMARY KEY,
pgmtype char(2),
pgmname varchar2(50),
pgmlevel number(2),
playtime number(3));

1-2)
create table tbl_schedule_04(
pgmid char(4) not null,
pgmcnt number(3) not null,
pgmdate char(8),
pgmtime char(4),
pgmday number(1),
primary key(pgmid, pgmcnt));

1-3)
create table tbl_pgmtype_04(
typecode char(2) not null primary key,
type_name varchar(20));

1-4)
insert into tbl_pgm_04 values ('1001', 'AA', '직업방송', 01, 60);
insert into tbl_pgm_04 values ('1002', 'AB', '개그콘서트', 13, 80);
insert into tbl_pgm_04 values ('1003', 'AC', '100분토론', 01, 100);
insert into tbl_pgm_04 values ('1004', 'AD', '중국어강좌', 01, 50);
insert into tbl_pgm_04 values ('1005', 'AE', '정글의법칙', 01, 60);
insert into tbl_pgm_04 values ('1006', 'AF', '사랑과전쟁', 19, 70);
insert into tbl_schedule_04 values ('1001', '1', 20181001, '0900', 1);
insert into tbl_schedule_04 values ('1002', '1', 20181001, '1100', 1);
insert into tbl_schedule_04 values ('1003', '1', 20181002, '1200', 2);
insert into tbl_schedule_04 values ('1004', '1', 20181002, '1400', 2);
insert into tbl_schedule_04 values ('1005', '1', 20181003, '1600', 3);
insert into tbl_schedule_04 values ('1006', '1', 20181003, '2000', 3);
insert into tbl_schedule_04 values ('1001', '2', 20181004, '0900', 4);
insert into tbl_schedule_04 values ('1002', '2', 20181004, '1100', 4);
insert into tbl_schedule_04 values ('1003', '2', 20181004, '1200', 4);
insert into tbl_schedule_04 values ('1004', '2', 20181005, '1400', 5);
insert into tbl_schedule_04 values ('1005', '2', 20181005, '1600', 5);
insert into tbl_schedule_04 values ('1006', '2', 20181005, '2000', 5);
insert into tbl_schedule_04 values ('1001', '3', 20181006, '0900', 6);
insert into tbl_schedule_04 values ('1002', '3', 20181006, '1100', 6);
insert into tbl_schedule_04 values ('1003', '3', 20181006, '1200', 6);
insert into tbl_schedule_04 values ('1004', '3', 20181006, '1400', 6);
insert into tbl_schedule_04 values ('1005', '3', 20181006, '1600', 6);
insert into tbl_schedule_04 values ('1006', '3', 20181006, '2000', 6);
insert into tbl_pgmtype_04 values ('AA', '뉴스');
insert into tbl_pgmtype_04 values ('AB', '코메디');
insert into tbl_pgmtype_04 values ('AC', '시사');
insert into tbl_pgmtype_04 values ('AD', '교육');
insert into tbl_pgmtype_04 values ('AE', '예능');
insert into tbl_pgmtype_04 values ('AF', '드라마');

1-5)
select * 
from tbl_pgm_04 p, tbl_pgmtype_04 t 
where p.pgmtype=t.typecode;

select pgmid, type_name ,pgmname,pgmlevel,playtime 
from tbl_pgm_04 p, tbl_pgmtype_04 t 
where p.pgmtype=t.typecode;

select pgmid as 프로ID, type_name as 프로타입 ,pgmname as 프로이름,pgmlevel as 등급,playtime as 시간 
from tbl_pgm_04 p, tbl_pgmtype_04 t 
where p.pgmtype=t.typecode;

select p.pgmid as 프로ID, p.pgmname as 프로이름, t.type_name as 프로타입, s.pgmdate as 날짜, s.pgmtime as 시간, s.pgmday as 요일 from tbl_pgm_04 p, tbl_pgmtype_04 t, tbl_schedule_04 s 
where p.pgmid=s.pgmid and
p.pgmtype=t.typecode;

select * from tbl_pgm_04 p, tbl_pgmtype_04 t where p.pgmtype=t.typecode;

select pgmid as 프로ID,type_name as 프로타입, pgmname as 프로이름, pgmlevel as 등급, playtime as 시간 
from tbl_pgm_04 p, tbl_pgmtype_04 t 
where p.pgmtype=t.typecode;

