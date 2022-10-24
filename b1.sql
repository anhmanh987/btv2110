create database btvn2010bai1
go
use btvn2010bai1

create table sinhvien(
rollno int ,
fullname nvarchar(100),
age int ,
address nvarchar (100),
email nvarchar (100),
phoneNumber nvarchar (100),
gender  nvarchar (100),
)
go	



create table monhoc(
mã_môn_học int primary key identity(1,1),
tên_môn_học nvarchar (100),
)
go

create table diem(
điểm int,
rollno int ,
mã_môn_học int  ,
)
go

create table phonghoc(
tên_phòng_học  nvarchar (100),
mã_phòng_học int primary key identity (1,1),
số_bàn_học int , 
số_ghế_học int, 
địa_chỉ_lớp_học nvarchar (100),
)
go	
create table lophoc(
mã_lớp_học int primary key identity (1,1),
tên_lớp_học nvarchar (100),
)
go

alter table sinhvien add primary key (rollno)
alter table diem add primary key (rollno)
alter table diem add primary key (mã_môn_học)

insert into sinhvien (rollno, fullname, age, address, email, phoneNumber, gender)values('1','a','12','qq','a@gmail.com',09999,'nam')
insert into sinhvien (rollno, fullname, age, address, email, phoneNumber, gender)values('2','b','12','qq','ab@gmail.com',09999,'nam')
insert into sinhvien (rollno, fullname, age, address, email, phoneNumber, gender)values('3','c','12','qq','ac@gmail.com',09999,'nam')
insert into sinhvien (rollno, fullname, age, address, email, phoneNumber, gender)values('4','d','12','qq','ad@gmail.com',09999,'nam')
insert into sinhvien (rollno, fullname, age, address, email, phoneNumber, gender)values('5','e','12','qq','ae@gmail.com',09999,'nam')

insert into  monhoc (tên_môn_học)values('a')
insert into  monhoc (tên_môn_học)values('ac')
insert into  monhoc (tên_môn_học)values('as')
insert into  monhoc (tên_môn_học)values('ad')
insert into  monhoc (tên_môn_học)values('ae')

insert into  diem(điểm,rollno,mã_môn_học)values(2,6,3)
insert into  diem(điểm,rollno,mã_môn_học)values(3,5,4)
insert into  diem(điểm,rollno,mã_môn_học)values(4,4,5)
insert into  diem(điểm,rollno,mã_môn_học)values(5,3,7)
insert into  diem(điểm,rollno,mã_môn_học)values(6,2,6)

select *from diem

insert into  lophoc(tên_lớp_học)values(1)
insert into  lophoc(tên_lớp_học)values(2)
insert into  lophoc(tên_lớp_học)values(3)
insert into  lophoc(tên_lớp_học)values(4)
insert into  lophoc(tên_lớp_học)values(5)

insert into  phonghoc(tên_phòng_học,số_bàn_học,số_ghế_học,địa_chỉ_lớp_học)values(1,22,12,1)
insert into  phonghoc(tên_phòng_học,số_bàn_học,số_ghế_học,địa_chỉ_lớp_học)values(2,44,32,1)
insert into  phonghoc(tên_phòng_học,số_bàn_học,số_ghế_học,địa_chỉ_lớp_học)values(3,32,22,1)
insert into  phonghoc(tên_phòng_học,số_bàn_học,số_ghế_học,địa_chỉ_lớp_học)values(4,41,42,1)
insert into  phonghoc(tên_phòng_học,số_bàn_học,số_ghế_học,địa_chỉ_lớp_học)values(5,14,52,1)


select tên_phòng_học from phonghoc where số_bàn_học>5 and số_ghế_học>5

select tên_phòng_học from phonghoc where số_bàn_học>5 and số_bàn_học<20 and số_ghế_học>5 and số_ghế_học<20