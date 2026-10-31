INSERT INTO — verilənlər bazasındakı cədvəle yeni sətir (məlumat) əlavə etmək üçün istifadə olunan DML (Data Manipulation Language) əmridir.

1. Əsas Sintaksisi (Bütün sütunlar üçün)
Əgər cədvəldəki bütün sütunlara ardıcıllıqla dəyər daxil edəcəksinizsə,sütun adlarını qeyd etmək məcburi deyil
(lakin cədvəl strukturu dəyişərsə səhv verə biləcəyi üçün sütun adlarını yazmaq həmişə daha təhlükəsizdir).
----------------
SQL
INSERT INTO CedvelAdi 
VALUES (Değer1, Değer2, Değer3, ...);

--------------------------------------
--Bu SQL sorğuları `Ogrenci` cədvəlinə yeni tələbə qeydləri əlavə etməyin iki fərqli üsulunu göstərir:
--birinci üsulda bütün sütunlar üçün dəyərlər ardıcıl şəkildə yazılır,
--ikinci üsulda isə yalnız xüsusi olaraq göstərilən sütunlar üçün məlumatlar daxil edilir.

INSERT into Ogrenci values (925,'Batu','Alp','12345678909','2022-09-02',1,'2000-05-17',70,0,0)
         VƏ YA
       insert into Ogrenci (OgrenciNo,Ad,Soyad,TCKimlikNo,KayitTarihi,ErkekMi,DogumTarihi) 
       values(980,'Damla','Acar','45433567543','2021-08-20',0,'2003-03-19')
