SELECT Ad, Soyad FROM Ogrenci WHERE OgrenciNo 
IN 
(SELECT OgrenciNo FROM KantinKayitlari WHERE MiktarTL > 50)