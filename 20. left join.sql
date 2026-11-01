LEFT JOIN (Sol Birləşdirmə):
sol cədvəldəki (sorğuda birinci yazılan cədvəldəki) bütün qeydləri, sağ cədvəldə isə yalnız ortaq (eşləşən) qeydləri gətirən SQL əməliyyatıdır.

Əgər sağ cədvəldə uyğun gələn məlumat yoxdursa, sorğu yenə də sol cədvəldəki sətri göstərir, lakin sağ cədvələ aid sütunlarda NULL (boş) dəyər qaytarır.
-----------------------------------
       Syntax
       SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name
--
       SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.CustomerID IS NULL
------------------------------------
       Nümunələr ilə izahları
select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       left join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo

İzahı: Sol cədvəldəki (Ogrenci) bütün tələbələri siyahıya daxil edir. 
Sağ cədvəldə (OgrenciAdres) ünvanı olanların ünvan detallarını göstərir, ünvanı olmayan tələbələr üçün isə ünvan sütunlarında NULL (boş) dəyəri qaytarır.
------------------------------------
select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       left join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo  
       Where B.OgrenciNo is null

İzahı: LEFT JOIN əməliyyatından sonra yalnız sağ cədvəldə qarşılığı tapılmayan, 
yəni baza sistemində hələ ünvanı qeyd olunmamış tələbələri tapıb üzə çıxarır (WHERE B.OgrenciNo IS NULL).
------------------------------------
select A.OgrenciNo, A.Ad, A.Soyad, sum(B.MiktarTL) as 'Toplam harcama' from Ogrenci A
       left join KantinKayitlari B
       on A.OgrenciNo = B.OgrenciNo
       group by A.OgrenciNo, A.Ad, A.Soyad
       order by OgrenciNo

İzahı: Bütün tələbələri siyahıya daxil edir (hətta kantindən heç nə almayanlar da daxil). 
Hər bir tələbənin bufetdəki ümumi xərcini (SUM) hesablayır, tələbələr üzrə qruplaşdırır (GROUP BY) və OgrenciNo-ya görə kiçikdən büyüyə sıralayır (ORDER BY). (Qeyd: Hiç alış-veriş etməyən tələbələrin toplam xərci NULL və ya 0 olaraq görünəcək).
------------------------------------
