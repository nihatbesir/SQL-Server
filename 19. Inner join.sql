INNER JOIN Syntax
  
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;

--------------------INNER JOIN (Daxili Birləşdirmə):
iki və ya daha çox cədvəldəki məlumatları aralarındakı ortaq (eyni) dəyərlərə əsasən birləşdirmək üçün istifadə olunan SQL əməliyyatıdır.

Əsas Xüsusiyyətləri:
Ortaq Məlumatlar: Yalnız hər iki cədvəldə ortaq (eşləşən) olan sətirləri qaytarır.

Uyğunsuzluqlar: Əgər bir cədvəldə olub digərində olmayan uyğun qeyd yoxdursa, həmin sətirlər nəticədən avtomatik xaric edilir (NULL qaytarmır, tamamilə silir).
--------------------------------------
                 Nümünələr ilə izahlar
--Ogrenci və OgrenciAdres cədvəllərindəki bütün sütunları (*) birləşdirir. Ünvan qeydi olan tələbələrin bütün məlumatlarını gətirir.
select * from Ogrenci A
    inner join OgrenciAdres B
    on A.OgrenciNo=B.OgrenciNo
------------------------------------
--1-ci sorğu ilə eyni birləşdirməni edir, lakin * əvəzinə yalnız müəyyən olunmuş sütunları (tələbə məlumatları və ünvan detalları) seçərək gətirir.
select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       inner join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo    
---------------------------------------------------------------------------------------
--Ogrenci və KantinKayitlari cədvəllərini birləşdirir.
--Tələbələrin xərclədiyi hər bir məbləği ayrı-ayrı sətir kimi göstərir (bir tələbə birdən çox xərcləmə edibsə, bir neçə sətir çıxır).
    select A.OgrenciNo, A.Ad, A.Soyad, B.MiktarTL from Ogrenci A
       inner join KantinKayitlari B
       on A.OgrenciNo = B.OgrenciNo
-------------------------------------------------------------
--Hər bir tələbənin bufetdəki ümumi xərcini (SUM) hesablayır.
--GROUP BY ilə tələbə üzrə qruplaşdırır və ORDER BY ilə OgrenciNo sütununa görə kiçikdən böyüyə sıralayır.
select A.OgrenciNo, A.Ad, A.Soyad, sum(B.MiktarTL) as 'toplam harcama' from Ogrenci A
       inner join KantinKayitlari B
       on A.OgrenciNo = B.OgrenciNo
       Group by A.OgrenciNo, A.Ad, A.Soyad --qruplandırmaq üçün
       order by OgrenciNo --sıralamaq üçün
-------------------------------------------------------------------------------------
