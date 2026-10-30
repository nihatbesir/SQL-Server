--Bu SQL ifadələri `Ogrenci` cədvəlinə başlanğıc dəyəri `0` olan `tinyint` tipində `SinavNotu1`, `SinavNotu2` və `FinalNotu` adlı üç yeni sütun əlavə edir.
ALTER TABLE Ogrenci ADD SinavNotu1 tinyint DEFAULT 0 
ALTER TABLE Ogrenci ADD SinavNotu2 tinyint DEFAULT 0
ALTER TABLE Ogrenci ADD FinalNotu tinyint DEFAULT 0
