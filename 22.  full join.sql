FULL JOIN (və ya FULL OUTER JOIN :Tam Xarici Birləşdirmə):
həm sol cədvəldəki, həm də sağ cədvəldəki bütün qeydləri (həm uyğun gələnləri, həm də gəlməyənləri) nəticəyə daxil edən SQL əməliyyatıdır.

Əsas Xüsusiyyətləri:
Əgər hər iki cədvəldə ortaq (eşləşən) sətir varsa, onları birləşdirir.

Əgər sol cədvəldə olub sağda uyğun gəlməyən varsa, sağ tərəfdəki sütunlara NULL yazır.

Əgər sağ cədvəldə olub solda uyğun gəlməyən varsa, sol tərəfdəki sütunlara NULL yazır. (Başqa sözlə, LEFT JOIN və RIGHT JOIN-in birləşmiş formasıdır).
  
--------------------------
FULL JOIN Syntax
  
SELECT column_name(s)
FROM table1
FULL JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
--------------------------
 Nümunələr və izahları
   
select A.OgrenciNo , A.Ad, A.Soyad, B.AdresDetay , B.Sehir from Ogrenci A
full join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo

--İzahı: Həm sol cədvəldəki (Ogrenci), həm də sağ cədvəldəki (OgrenciAdres) bütün qeydləri bir araya gətirir.
--Ünvanı olan və olmayan bütün tələbələri,
--Həmçinin hər hansı bir tələbəyə bağlanmamış (əgər varsa) kimsəsiz ünvanları eyni anda siyahıya çıxarır. Uyğunlaşmayan tərəflərdə NULL yazılır.
--------------------------
select A.OgrenciNo , A.Ad, A.Soyad, B.AdresDetay , B.Sehir from Ogrenci A
full join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo
Where A.OgrenciNo is null
or B.OgrenciNo is null

--İzahı: FULL JOIN nəticəsində yaranan böyük siyahıdan yalnız bir-biri ilə əlaqəsi olmayan (tək qalan) sətrləri filtrləyib çıxarır.
--A.OgrenciNo IS NULL — tələbəsi olmayan ünvanları,
--B.OgrenciNo IS NULL — ünvanı qeyd olunmayan tələbələri göstərir.
--Nəticə: Bu sorğu hər iki cədvəldə bir-biri ilə eşləşməyən bütün tək/artıq qeydləri tapmaq üçün istifadə olunur.
