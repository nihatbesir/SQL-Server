--Bu sorğu, ünvanı olan tələbələrin şəxsi və ünvan məlumatlarını iki cədvəli birləşdirərək (INNER JOIN) gətirir.
  
select Ogrenci.OgrenciNo, Ogrenci.Ad, Ogrenci.Soyad,Ogrenci.KayitTarihi,
OgrenciAdres.AdresDetay, OgrenciAdres.Sehir from Ogrenci, OgrenciAdres
where Ogrenci.OgrenciNo=OgrenciAdres.OgrenciNo
