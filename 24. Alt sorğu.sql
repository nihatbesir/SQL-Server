Alt sorğu (Subquery / Nested Query):
başqa bir əsas SQL sorğusunun içində yazılan (yerləşdirilən) əlavə sorğudur. Əsas sorğu nəticəni tapmaq üçün həmin alt sorğudan gələn məlumatdan istifadə edir.
  
Adətən WHERE şərt blokunda, bəzən isə FROM və ya SELECT hissəsində istifadə olunur.

--------------------------------
  Əsas Növləri və Nümunələr:
1. IN Operatoru ilə Alt Sorğu (Çoxlu sətir qaytaran)
--Tutaq ki, kantindən 50 TL-dən çox alış-veriş edən tələbələrin adlarını öyrənmək istəyirik:
  
SELECT Ad, Soyad FROM Ogrenci WHERE OgrenciNo 
IN 
(SELECT OgrenciNo FROM KantinKayitlari WHERE MiktarTL > 50)

--Əvvəlcə mötərizə içindəki alt sorğu işləyir və 50 TL-dən çox xərcləyənlərin OgrenciNo-larını tapır. 
--Daha sonra əsas sorğu həmin nömrələrə uyğun tələbələrin ad və soyadını seçi
--------------------------------
2. Tək Dəyər Qaytaran Alt Sorğu (Scalar Subquery)
--Tutaq ki, bütün tələbələrin orta xərcindən daha çox xərcləyən tələbələri tapmaq istəyirik:

SELECT OgrenciNo, MiktarTL FROM KantinKayitlari 
  WHERE
   MiktarTL > (SELECT AVG(MiktarTL) FROM KantinKayitlari)

--Alt sorğu (SELECT AVG(...)) bütün xərclərin ortalamasını tək bir rəqəm olaraq tapır. Əsas sorğu isə həmin rəqəmdən böyük olan qeydləri seçir.
