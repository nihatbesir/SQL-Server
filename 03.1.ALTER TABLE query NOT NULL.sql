--Bu SQL ifadəsi `Ogrenci` cədvəlindəki mövcud `DogumTarihi` sütununu yeniləyərək onun boş buraxılmasına icazə verməyən (`NOT NULL`) məhdudiyyətini təyin edir.
ALTER TABLE Ogrenci ALTER COLUMN DogumTarihi date NOT NULL
