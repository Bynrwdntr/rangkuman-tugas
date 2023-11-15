-- Active: 1699884795676@@127.0.0.1@3306
CREATE DATABASE ROUTINE;
USE ROUTINE;
CREATE FUNCTION fungsi1(a SMALLINT) RETURNS int RETURN(a+a);
select fungsi1(60);
CREATE FUNCTION fungsi2(kar CHAR(50)) RETURNS INT RETURN LENGTH(kar);
select fungsi2('MySQL');
CREATE Function fungsi3(a smallint) RETURNS INT RETURN(a*10);
SELECT fungsi3(10);

SHOW CREATE FUNCTION fungsi1;
SHOW CREATE FUNCTION fungsi2;
SHOW CREATE FUNCTION fungsi3;
DROP Function fungsi3;
SHOW CREATE FUNCTION fungsi3;

CREATE DATABASE sekolah;
USE sekolah;
CREATE table siswa(nis varchar(15), nama char(20), angkatan varchar(30),PRIMARY KEY(nis));
desc siswa;
insert into siswa values('11234','ana','2008/2009'),('11235','bayu','2009/20010'),('11236','canda','2010/2011'),('11237','dirga','2012/2013'),('11238','endang','2013/2014');
SELECT * from siswa;

DELIMITER //
CREATE PROCEDURE jumlahsiswa(out parameter1 INT)
BEGIN
    SELECT count(*) INTO parameter1 FROM siswa;
END;
//
DELIMITER ;

CALL jumlahsiswa(@a);
SELECT (@a);


//database toko//
USE toko;
CREATE TABLE barang(NamaBarang varchar(20),Satuan varchar(20), Harga int, Jumlah INT);
desc barang;

insert into barang values('Sabun','Bungkus','3000','20'),('Sikat Gigi','Bungkus','4000','50'),('Sampo','Botol','10000','30'),('kopi','Kg','30000','20'),('Teh','Bungkus','5000','40'),('Beras','Kg','10000','10');

select * from barang;

DELIMITER //
CREATE PROCEDURE HitungTotalNilai(out total INT)
BEGIN
    SELECT SUM(Harga * Jumlah) INTO total FROM barang;
END;
//
DELIMITER ;

CALL HitungTotalNilai(@total);
SELECT @total AS TotalNilai;


