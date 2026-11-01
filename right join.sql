select A.OgrenciNo, A.Ad, A.Soyad, A.KayitTarihi, B.AdresDetay, B.Sehir from Ogrenci A
       right join OgrenciAdres B
       on A.OgrenciNo = B.OgrenciNo