UPDATE — verilənlər bazasındakı mövcud cədvəldə artıq mövcud olan məlumatları (sətirləri)
yeniləmək və ya dəyişdirmək üçün istifadə olunan DML (Data Manipulation Language) əmridir.

Əsas Sintaksisi:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

  --------------
--Bu SQL əmrləri `Ogrenci` cədvəlində adı Ebru və soyadı Acar olan tələbənin 1-ci imtahan balını 75-ə,
--nömrəsi 900-dən böyük və ya bərabər olan qız tələbələrin isə 2-ci imtahan və final ballarını uyğun olaraq 88 və 90-a yeniləyir.

UPDATE Ogrenci set SinavNotu1 = 75 WHERE Ad='Ebru' and Soyad='Acar'
UPDATE Ogrenci set SinavNotu2 = 88, FinalNotu= 90 WHERE ErkekMi= 0 and OgrenciNo>=900
