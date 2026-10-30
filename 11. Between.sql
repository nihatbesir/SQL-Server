--Bu SQL sorğusu `Ogrenci` cədvəlindən tələbə nömrəsi 400 ilə 800 arasında olan (400 və 800 daxil olmaqla)bütün tələbələrin məlumatlarını seçib siyahılayır.
select * from Ogrenci where OgrenciNo between 400 and 800

--Bu SQL sorğusu `Ogrenci` cədvəlindən tələbə nömrəsi 400 ilə 800 arasında olan və `ErkekMi` sütunu 0(qiz) olan bütün tələbələrin məlumatlarını seçib siyahılayır.
select * from Ogrenci where OgrenciNo between 400 and 800 and ErkekMi = 0


--Bu SQL sorğusu `Ogrenci` cədvəlindən doğum tarixi 1 yanvar 1999 ilə 1 yanvar 2000 arasında olan bütün tələbələrin məlumatlarını seçib siyahılayır.
select * from Ogrenci Where DogumTarihi between '1999-01-01' and '2000-01-01'
