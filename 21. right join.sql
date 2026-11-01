RIGHT JOIN (Sağ Birləşdirmə):
sağ cədvəldəki (sorğuda ikinci yazılan cədvəldəki) bütün qeydləri, sol cədvəldə isə yalnız ortaq (eşləşən) qeydləri gətirən SQL əməliyyatıdır.

Əgər sol cədvəldə uyğun gələn məlumat yoxdursa,
sorğu yenə də sağ cədvəldəki sətri göstərir, lakin sol cədvələ aid sütunlarda NULL (boş) dəyər qaytarır. (LEFT JOIN-in tam əksidir).
-----------------------------------      
RIGHT JOIN Syntax
       
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
-----------------------------------
Nümunələr ilə izahları
select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       right join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo

İzahı: Sağ cədvəldəki (OgrenciAdres) bütün ünvanları və sol cədvəldən (Ogrenci) 
ona uyğun gələn tələbələri gətirir. Əgər hər hansı ünvanın qarşılığında tələbə yoxdursa, tələbə məlumatları yerində NULL yazılır.
-----------------------------------
select A.OgrenciNo, B.OgrenciNo ,A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       right join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo

İzahı: Birinci sorğu ilə eynidir, lakin fərq olaraq həm A.OgrenciNo,
həm də B.OgrenciNo seçilib. Bu, nəticə cədvəlində hansı tərəfdə uyğunluq olub-olmadığını (NULL olub-olmadığını) əyani şəkildə görmək üçündür.
-----------------------------------
select A.OgrenciNo, B.OgrenciNo ,A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       right join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo
      where A.OgrenciNo is null

İzahı: RIGHT JOIN nəticəsində əldə olunan siyahıdan yalnız tələbəsi olmayan (qarşılığı tapılmayan) ünvanları seçib çıxarır 
(WHERE A.OgrenciNo IS NULL). Sağ cədvəldə olub sol cədvəldə heç bir əlaqəsi olmayan qeydləri tapmaq üçün istifadə olunur.
-----------------------------------
select A.OgrenciNo, A.Ad, A.Soyad, sum(B.MiktarTL) as 'Toplam harcama' from Ogrenci A
       right join KantinKayitlari B
       on A.OgrenciNo = B.OgrenciNo
       group by A.OgrenciNo, A.Ad, A.Soyad
       order by OgrenciNo

İzahı: KantinKayitlari (sağ cədvəl) üzrə bütün əməliyyatları əsas götürür,tələbə məlumatları ilə birləşdirir. 
Hər bir tələbənin bufetdəki ümumi xərcini (SUM) hesablayır, qruplaşdırır (GROUP BY) və OgrenciNo-ya görə sıralayır (ORDER BY).
-----------------------------------
