   --Əsas Anlayışlar
TRANSCATİON (Tranzaksiya): Bir və ya bir neçə SQL əmrini tək bir "məntiqi vahid" (paketi) kimi birləşdirir.
     Ya hamısı tam uğurla icra olunmalıdır, ya da hər hansı biri səhv verərsə, heç biri icra olunmamalıdır (hər şey əvvəlki vəziyyətinə qayıtmalıdır).

COMMIT: Tranzaksiya daxilindəki bütün əməliyyatların uğurla başa çatdığını təsdiqləyir və dəyişiklikləri həmişəlik olaraq bazaya yazır (yadda saxlayır).

ROLLBACK: Tranzaksiya zamanı hər hansı bir xəta baş verərsə, o ana qədər edilən bütün dəyişiklikləri |
     ləğv edir və bazanı əvvəlki təmiz vəziyyətinə qaytarır.

TRY / CATCH: Proqramlaşdırmada olduğu kimi SQL-də də xətaları idarə etmək üçündür. 
     BEGIN TRY blokunda səhv baş verərsə, idarəetmə dərhal BEGIN CATCH blokuna keçir və biz orada ROLLBACK edə və ya xətanı görө bilərik.
------------------------------------------------------
 
     --Numune
begin transaction ;

begin try
     insert into Ogrenciler (OgrenciID,Ad,Soyad,Sinif)
     values
     (1,'Ahmet','Yılmaz','10-A'),
     (2,'Ayşe','Demir','10-B'),
     (3,'Ali','Kaya','10-A'),
     (4,'Fatoş','Yıldız','10-C')

     --Tüm öğrenciler başarıyla eklendi, ışlemi onaylayalım
commit;

end try
begin catch 
     --hata durumunda işlemi geri alalım
     rollback
end catch;
----------
    --Diger Numune:
begin transaction ;

begin try
     insert into Ogrenciler (OgrenciID,Ad,Soyad,Sinif)
     values
     (9,'Kaan','Yılmaz','10-A'),
     (10,'Zeynep','Demir','10-B')
     
     --Tüm öğrenciler başarıyla eklendi, ışlemi onaylayalım
commit;
end try
begin catch 
     --hata durumunda işlemi geri alalım
     rollback;

     --Hata bilgilerini Log tablosuna kaydedelim
     insert into ErrorLog (ErrorDate, ErrorMessage) 
     values (getdate() , ERROR_MESSAGE() )

end catch;
