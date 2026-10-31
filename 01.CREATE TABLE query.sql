CREATE TABLE — SQL-də verilənlər bazasında yeni bir cədvəl (table) yaratmaq üçün istifadə olunan DDL (Data Definition Language) əmridir.

Əsas Sintaksisi:
CREATE TABLE table_name (
  column1 datatype constraint,
  column2 datatype constraint,
  column3 datatype constraint,
  ....
);
---------------
Nümünə ilə izah
--Bu SQL ifadəsi `Ogrenci` adlı yeni bir cədvəl yaradır və həmin cədvəldə
--tələbə nömrəsi, ad, soyad, TC kimlik nömrəsi, qeydiyyat tarixi və cinsiyyət məlumatlarını saxlamaq üçün müvafiq sütunları və məlumat tiplərini təyin edir.

CREATE TABLE Ogrenci (
OgrenciNo int NOT NULL,
Ad varchar(30) NOT NULL,
Soyad varchar(30) NOT NULL,
TCKimlikNo char(11) NOT NULL,
KayitTarihi date NOT NULL,
ErkekMi bit NOT NULL)
