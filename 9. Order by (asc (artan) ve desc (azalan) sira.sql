--artan sıra
select * from Ogrenci order by OgrenciNo asc

--azalan sıra
select * from Ogrenci order by OgrenciNo desc 

--Əlavə Nümunələr
select *from Ogrenci order by ErkekMi, Ad 
select *from Ogrenci order by ErkekMi, Ad desc --qız olan tələbələrin adının azalan sıra ilə (z-A)
select *from Ogrenci order by ErkekMi desc, Ad desc --kişi olan tələbələrin adlarının azalan sıra ilə tapılması (Z-a)
