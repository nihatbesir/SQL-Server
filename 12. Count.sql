--Bu SQL sorğuları `COUNT()` aqreqat funksiyasından istifadə edərək `Ogrenci` cədvəlindəki qeydlərin sayını müxtəlif şərtlərə əsasən hesablayır:

select count(*) from Ogrenci — Cədvəldəki ümumi sətir (tələbə) sayını qaytarır.
select count(OgrenciNo) from Ogrenci — `OgrenciNo` sütunu dolu olan sətirlərin sayını hesablayır.
select count(*) from Ogrenci where ErkekMi = 1 — Cinsiyyəti kişi olan tələbələrin ümumi sayını tapır.
select count(*) from Ogrenci where DogumTarihi >= '2000-09-03' — Doğum tarixi 3 sentyabr 2000 və ya ondan sonrakı olan tələbələrin sayını hesablayır.
