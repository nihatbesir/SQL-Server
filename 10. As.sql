--Bu SQL sorğusu,Ogrenci cədvəlindən tələbələrin adını, soyadını, 1-ci imtahan balını "Midterm1" ləqəbi (alias) ilə, 2-ci imtahan balını və final balını seçib siyahılayır.
select Ad, Soyad, --SinavNotu1 as Midterm1 , SinavNotu2 , FinalNotu from Ogrenci

--Bu SQL sorğusu Ogrenci cədvəlindən tələbə nömrəsini, adını, soyadını, bütün imtahan ballarını və onların ədədi ortasını hesablayaraq "Ortalama" adı altında siyahılayır.
select OgrenciNo , Ad, Soyad, SinavNotu1, SinavNotu2, FinalNotu,
(SinavNotu1+SinavNotu2+FinalNotu)/3 as Ortalama from Ogrenci
