begin transaction ;

begin try
     insert into Ogrenciler (OgrenciID,Ad,Soyad,Sinif)
     values
     (1,'Ahmet','Yılmaz','10-A'),
     (2,'Ayşe','Demir','10-B'),
     (3,'Ali','Kaya','10-A'),
     (4,'Fatoş','Yıldız','10-C')

     --Tüm öğrenciler başarıyla eklendi, ışlemi onaylayalım
commit;

end try
begin catch 
     --hata durumunda işlemi geri alalım
     rollback
end catch;