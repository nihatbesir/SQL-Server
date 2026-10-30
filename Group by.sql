--select ErkekMi, count(*) from Ogrenci group by ErkekMi
--select ErkekMi, count(*) as 'Ogrenci Sayisi' from Ogrenci group by ErkekMi
--select ErkekMi, count(*) as 'Ogrenci Sayisi' , avg(SinavNotu1) as 'Sinav ortalamasi' from Ogrenci group by ErkekMi
select ErkekMi, count(*) as 'Ogrenci Sayisi',
      avg(SinavNotu1) as 'Sinav 1 ortalamasi ',
      avg(SinavNotu2) as 'Sinav 2 ortalamasi',
      avg(FinalNotu) as 'Final ortalamasi' ,
      min(SinavNotu2) as 'En düşük Sınav2 Notu' ,
      max(SinavNotu2) as 'En yüksek Sınav2 Notu' from Ogrenci group by ErkekMi