DROP TABLE - verilənlər bazasından mövcud cədvəli və onun içindəki bütün məlumatları,
sütunları, eləcə də indeksləri birdəfəlik silmək üçün istifadə olunan DDL (Data Definition Language) əmridir.

Əsas Sintaksisi:
SQL
DROP TABLE CedvelAdi;
---------------

Nümunə ilə izah
--Bu SQL ifadəsi `Ogrenci` cədvəlindəki mövcud `DogumTarihi` sütununu yeniləyərək onun boş buraxılmasına icazə verməyən (`NOT NULL`) məhdudiyyətini təyin edir.
ALTER TABLE Ogrenci ALTER COLUMN DogumTarihi date NOT NULL
