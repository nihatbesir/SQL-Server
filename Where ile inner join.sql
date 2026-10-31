select Ogrenci.OgrenciNo, Ogrenci.Ad, Ogrenci.Soyad,Ogrenci.KayitTarihi,
OgrenciAdres.AdresDetay, OgrenciAdres.Sehir from Ogrenci, OgrenciAdres
where Ogrenci.OgrenciNo=OgrenciAdres.OgrenciNo