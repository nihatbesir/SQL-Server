--Bu üç SQL sorğusu məlumatların `GROUP BY` vasitəsilə addım-addım daha detallı hesabat halına gətirilməsini və zənginləşdirilməsini göstərir:

select ErkekMi, count(*) from Ogrenci group by ErkekMi — Tələbələri `ErkekMi` sütununa (cinsiyyətə) görə qruplaşdırır və hər qrupdakı tələbə sayını hesablayır. Nəticə cədvəlində say sütununun xüsusi başlığı olmur.
select ErkekMi, count(*) as 'Ogrenci Sayisi' from Ogrenci group by ErkekMi — Əvvəlki sorğu ilə eyni işi görür, lakin `AS` (alias) açar sözündən istifadə edərək say sütununa səliqəli və oxunaqlı **`Ogrenci Sayisi`** başlığını verir.
select ErkekMi, count(*) as 'Ogrenci Sayisi' , avg(SinavNotu1) as 'Sinav ortalamasi' from Ogrenci group by ErkekMi — Qruplaşdırmanı bir addım da irəli apararaq həm tələbə sayını, həm də hər qrup üzrə 1-ci imtahanın orta qiymətini (`AVG`) eyni cədvəldə birləşdirir.
-----------------------------------------------------------
      select ErkekMi, count(*) as 'Ogrenci Sayisi',
      avg(SinavNotu1) as 'Sinav 1 ortalamasi ',
      avg(SinavNotu2) as 'Sinav 2 ortalamasi',
      avg(FinalNotu) as 'Final ortalamasi' ,
      min(SinavNotu2) as 'En düşük Sınav2 Notu' ,
      max(SinavNotu2) as 'En yüksek Sınav2 Notu' from Ogrenci group by ErkekMi

Bu sorğu hər qrup (kişi və qadın tələbələr) üzrə bütün əsas akademik göstəriciləri tək bir cədvəldə cəmləşdirir:
ErkekMi — Məlumatları cinsiyyətə görə qruplaşdıran əsas sütun.
count(*) as 'Ogrenci Sayisi' — Hər qrupda nə qədər tələbə olduğunu hesablayır.
avg(SinavNotu1), avg(SinavNotu2), avg(FinalNotu) — Hər üç imtahan növü üzrə qrupların orta qiymətlərini (ortalama balını) ayrı-ayrıda tapır.
min(SinavNotu2) və max(SinavNotu2) — 2-ci imtahan üzrə qrup daxilindəki ən aşağı (minimum) və ən yüksək (maksimum) nəticələri göstərir.
