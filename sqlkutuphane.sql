create database school_library;
use school_library;
create table uyeler(

uyeNo int not null primary key identity(1,1),
uyeAdi nvarchar(50)not null,
uyeSoyadi nvarchar(50) not null,
eposta nvarchar(100) not null,
cinsiyet char(2) not null,
telefon int
);

create table adresler(

adresNo int not null primary key identity(1,1),
Sehir nvarchar(50)not null,
Mahalle nvarchar(50) not null,
BinaNo int not null,
cadde nvarchar(200) not null,
ulke nvarchar(50),
postaKodu int
);
ALTER TABLE uyeler ADD adresNo int constraint FK_uyeler_adres Foreign key (adresNo) references ADRESLER (adresNo);

create table kutuphane(
kutuphane int not null identity (1,1) PRIMARY KEY,
kutuphaneIsmi nvarchar(50),
aciklama nvarchar(500),
adresNo int constraint FK_adresler_kutuphane FOREIGN KEY (adresNo) references adresler(adresNo)
)
select * from kutuphane
