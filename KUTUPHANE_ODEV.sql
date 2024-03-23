/*CREATE DATABASE LIBRARYY
USE LIBRARYY*/
/*CREATE TABLE UYELER(
UYE_ID INT PRIMARY KEY,
UYE_AD NVARCHAR(50),
UYE_SOYAD NVARCHAR(50),
CINSIYET NVARCHAR(50),
TELEFON NVARCHAR(50),
E_POSTA VARCHAR(100),
)

CREATE TABLE ADRESLER(
ADRES_ID INT PRIMARY KEY,
SEHIR NVARCHAR(50),
MAHALLE NVARCHAR(50),
CADDE NVARCHAR(50),
BINA_ID INT ,
POSTA_KODU INT,
ULKE NVARCHAR(50))

CREATE TABLE KUTUPHANE(
KUTUPHAHE_ID INT PRIMARY KEY,
ADRES_ID INT,
TELEFON_ID INT,
E_POSTA NVARCHAR(50)
CONSTRAINT ADRES_ID_PK FOREIGN KEY (ADRES_ID) REFERENCES ADRESLER([ADRES_ID]))

CREATE TABLE KATEGORI(
KATEGORI_ID INT PRIMARY KEY,
KATEGORI_AD NVARCHAR(50))

CREATE TABLE YAZARLAR(
YAZAR_ID INT PRIMARY KEY,
YAZAR_ADI NVARCHAR(50),
YAZAR_SOYADI NVARCHAR(50))

CREATE TABLE KITAPLAR(
KITAP_ID INT PRIMARY KEY,
KITAP_ADI NVARCHAR(50),
ISBN NVARCHAR(50),
SAYFA_SAYISI INT,
YAZAR_ID INT ,
KATEGORI_ID INT 
CONSTRAINT YAZAR_ID_FK FOREIGN KEY (YAZAR_ID) REFERENCES YAZARLAR ([YAZAR_ID]),
CONSTRAINT KATEGORI_ID_FK FOREIGN KEY (KATEGORI_ID) REFERENCES KATEGORI([KATEGORI_ID]),
)

CREATE TABLE EMANET_KITAPLAR(
EMANET_ID INT PRIMARY KEY,
UYE_ID INT,
KITAP_ID INT,
MIKTAR INT,
EMANET_TARIHI DATE,
TESLIM_TARIHI DATE
CONSTRAINT KITAP_ID_FK FOREIGN KEY (KITAP_ID) REFERENCES KITAPLAR ([KITAP_ID]),
CONSTRAINT UYE_ID_FK FOREIGN KEY (UYE_ID) REFERENCES UYELER([UYE_ID]),
)

CREATE TABLE EMANET_GECMISI (
    EMANET_ID INT,
    KITAP_ID INT,
    UYE_ID INT,
    TESLIM_TARIHI DATE,
    GECIKME_BEDELI DECIMAL(10, 2),
    CONSTRAINT EMANET_ID_FK FOREIGN KEY (EMANET_ID) REFERENCES EMANET_KITAPLAR ([EMANET_ID]),
    CONSTRAINT KITAP1_ID_FK FOREIGN KEY (KITAP_ID) REFERENCES KITAPLAR ([KITAP_ID]),
    CONSTRAINT UYE1_ID_FK FOREIGN KEY (UYE_ID) REFERENCES UYELER([UYE_ID]),
)

CREATE TABLE KITAP_YAZAR (
    KITAP_ID INT,
    YAZAR_ID INT,
    CONSTRAINT KITAP2_ID_FK FOREIGN KEY (KITAP_ID) REFERENCES KITAPLAR ([KITAP_ID]),
    CONSTRAINT YAZAR2_ID_FK FOREIGN KEY (YAZAR_ID) REFERENCES YAZARLAR([YAZAR_ID]),
)

CREATE TABLE KATEGORI_KITAP (
    KITAP_ID INT,
    KATEGORI_ID INT,
    CONSTRAINT KITAP3_ID_FK FOREIGN KEY (KITAP_ID) REFERENCES KITAPLAR ([KITAP_ID]),
    CONSTRAINT KATEGORI3_ID_FK FOREIGN KEY (KATEGORI_ID) REFERENCES KATEGORI([KATEGORI_ID]),
)
/*
INSERT INTO UYELER(UYE_ID,UYE_AD,UYE_SOYAD,CINSIYET,TELEFON,E_POSTA) VALUES (12, 'R�MEYSA NUR' , 'ASLAN', 'KADIN', '05458057469', 'RUMEYSANURASLAN@GMAIL.COM'),(13, 'ELIF', 'ASLAN' , 'KADIN', '05458057469', 'ELIFASLAN@GMAIL.COM')
INSERT INTO ADRESLER(ADRES_ID,SEHIR,MAHALLE,CADDE,BINA_ID,POSTA_KODU,ULKE) VALUES (1,'KAYSERI', 'MEVLANA', 'IKBAL', 16, 38280, 'T�RKIYE'),(2 ,'KAYSERI' , 'PAPATYA' , 'BADEMLI' , 17 , 38280, 'T�RKIYE')
INSERT INTO KUTUPHANE(KUTUPHAHE_ID,ADRES_ID,TELEFON_ID,E_POSTA) VALUES (1, 1 , 55555555, 'MEVLANAKUTUPHANESI@GMAIL.COM'), (2,2,666666666 , 'BADEMLIKUTUPHANESI@GMAIL.COM')
INSERT INTO KATEGORI(KATEGORI_ID,KATEGORI_AD) VALUES (1, 'AKSIYON'),(2, 'MACERA'),(3,'KOMEDI'),(4,'KURGU')
INSERT INTO YAZARLAR(YAZAR_ID,YAZAR_ADI,YAZAR_SOYADI) VALUES (1 , 'JACK', 'LONDON'),(2,'PEYAMI' , 'SAFA' )
INSERT INTO KITAPLAR(KITAP_ID,KITAP_ADI,ISBN,SAYFA_SAYISI,YAZAR_ID,KATEGORI_ID) VALUES (1,'VAH�ETIN �A�RISI', '9789944887632', 107, 1,2),(2,'FATIH HARBIYE',' 9786254085079',128,2,4)
INSERT INTO EMANET_KITAPLAR(EMANET_ID,UYE_ID,KITAP_ID,MIKTAR,EMANET_TARIHI,TESLIM_TARIHI) VALUES (1, 12, 1, 1, '18-01-2024', '01-02-2024'),(2,13,1,2, '18-01-2024', '01-02-2024')
INSERT INTO EMANET_GECMISI(EMANET_ID,KITAP_ID,UYE_ID,TESLIM_TARIHI,GECIKME_BEDELI) VALUES (1,1,12, '18-01-2024' , 20.00),(1,1,13, '18-01-2024' , 25.00)
INSERT INTO KITAP_YAZAR(KITAP_ID,YAZAR_ID) VALUES (1,1),(2,2)
INSERT INTO KATEGORI_KITAP(KITAP_ID,KATEGORI_ID) VALUES(1,2),(2,4)*/


/*SELECT DISTINCT * FROM UYELER
SELECT DISTINCT * FROM ADRESLER
SELECT DISTINCT * FROM KUTUPHANE
SELECT DISTINCT * FROM KATEGORI
SELECT DISTINCT * FROM YAZARLAR
SELECT DISTINCT * FROM KITAPLAR
SELECT DISTINCT * FROM EMANET_KITAPLAR
SELECT DISTINCT * FROM KITAP_YAZAR
SELECT DISTINCT * FROM KATEGORI_KITAP*/
