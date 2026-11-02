--Dəyişiklik etmək üçün ALTER PROCEDURE
Create procedure Adresegoreogrencilistesi (@detay varchar(20))
as
select * from Ogrenci WHERE OgrenciNo
in ( select OgrenciNo from OgrenciAdres where AdresDetay like @detay)


execute Adresegoreogrencilistesi '%Paris%'