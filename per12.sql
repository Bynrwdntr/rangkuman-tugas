create database Elektonik ;
use Elektonik ;
create table Televisi (kode_tv varchar(15) , merk char(20) ,Tipe char (20) ,unit char (5) ,primary key(kode_tv));
insert into Televisi values ('a1','Samsung','AF2','21'),('a2','Toshiba','AL2','15'),('a3','Politron','AC1','13'),('a4','Sharp','AF1','10');
select *from Televisi;
show tables;
exit

Buatlah folder di D (bukan di C) dengan nama semester5 dan namai simpan backup1.sql
dalam folder tersebut.ketik perintah di bawah ini
C:\xampp\mysql\bin>cd\
C:\>mysqldump elektronik > D:\semester5\backup1.sql –u root

drop database Elektronik;
create database Elektonik;
use Elektonik;
show tables;
