CREATE TABLE MUSTERI(
M_NO INT PRIMARY KEY IDENTITY(1,1),
M_ADI NVARCHAR(50),
M_SOYAD NVARCHAR(50),
M_ADRES NVARCHAR(100),
M_TELEFON NVARCHAR(11))

CREATE TABLE ARAC(
ARAC_NO INT IDENTITY(1,1) PRIMARY KEY,
MODEL NVARCHAR (50),
MARKA NVARCHAR(10),
PLAKA NVARCHAR(20),
FIYAT INT)


CREATE TABLE SATIS(
SATIS_NO INT PRIMARY KEY IDENTITY(1,1),
M_NO INT,
ARAC_NO INT,
SATIS_TARIH DATE,
SATIS_FIYAT INT);

CREATE TABLE ALIM(
ALIM_NO INT IDENTITY(1,1) PRIMARY KEY,
M_NO INT,
ARAC_NO INT,
ALIM_TARIH NVARCHAR(20) ,
ALIS_FIYAT INT);



INSERT INTO MUSTERI VALUES ('RUMEYSA', 'ASLAN', 'MEVLANA/TALAS/KAYSERİ' , '05458057469');
INSERT INTO MUSTERI VALUES ('NUR', 'ASLAN', 'MEVLANA/TALAS/KAYSERİ' , '05399350138');

INSERT INTO ARAC VALUES('MONDEO', 'FORD', '38ABT854' , 160000)
INSERT INTO ARAC VALUES('CRUZE', 'CHEVROLET' , '38ABT855' , 47500)


INSERT INTO SATIS VALUES(1,1,'2023-10-26',170000)
INSERT INTO SATIS VALUES(3,2,'2024-02-16', 476000)

INSERT INTO ALIM VALUES(1,2,'2024-01-23', 40000)

--1.	Satış yapılan müşterilerin isimlerini listelemek için gerekli SQL ifadesini yazınız.
SELECT * FROM MUSTERI JOIN SATIS ON SATIS.M_NO=MUSTERI.M_NO  
--2.	Hangi müşteriden hangi aracın alındığını listelemek için gerekli SQL ifadesini yazınız.
SELECT * FROM ALIM  JOIN MUSTERI ON ALIM.M_NO=MUSTERI.M_NO JOIN ARAC ON ARAC.ARAC_NO=ALIM.ALIM_NO
--3.	Her bir müşteriden alınan araçların sayısını listelemek için gerekli SQL ifadesini yazınız.
SELECT ARAC.MARKA,ARAC.MODEL FROM ARAC JOIN SATIS ON SATIS.ARAC_NO=ARAC.ARAC_NO
--4.	Satılan araçların marka ve modelini bulmak için gerekli SQL ifadesini yazınız.
SELECT ARAC.MARKA,ARAC.MODEL FROM ARAC JOIN SATIS ON SATIS.ARAC_NO=ARAC.ARAC_NO
--5.	Toplam satış ve toplam alım tutarlarını ve bunların farkını bulmak için gerekli SQL ifadesini yazınız.
SELECT * FROM SATIS JOIN ALIM ON SATIS.


