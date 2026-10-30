--Bu SQL sorğuları `Ogrenci` cədvəlinə yeni tələbə qeydləri əlavə etməyin iki fərqli üsulunu göstərir:
--birinci üsulda bütün sütunlar üçün dəyərlər ardıcıl şəkildə yazılır,
--ikinci üsulda isə yalnız xüsusi olaraq göstərilən sütunlar üçün məlumatlar daxil edilir.

INSERT	into Ogrenci values (925,'Batu','Alp','12345678909','2022-09-02',1,'2000-05-17',70,0,0)
         VƏ YA
       insert into Ogrenci (OgrenciNo,Ad,Soyad,TCKimlikNo,KayitTarihi,ErkekMi,DogumTarihi) 
       values(980,'Damla','Acar','45433567543','2021-08-20',0,'2003-03-19')
