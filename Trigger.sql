


create trigger Triggersecond
on Ogrenci 
after delete
as 
begin 
   insert into OgrenciLog (OgrenciSayisi,Tarih) 
   values ((select count(OgrenciNo) from Ogrenci), getdate())
end
