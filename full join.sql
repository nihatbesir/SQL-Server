select A.OgrenciNo , A.Ad, A.Soyad, B.AdresDetay , B.Sehir from Ogrenci A
full join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo

select A.OgrenciNo , A.Ad, A.Soyad, B.AdresDetay , B.Sehir from Ogrenci A
full join OgrenciAdres B
on A.OgrenciNo=B.OgrenciNo
Where A.OgrenciNo is null
or B.OgrenciNo is null