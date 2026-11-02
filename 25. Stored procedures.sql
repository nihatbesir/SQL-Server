Stored Procedure (Saxlanılan Yordam / Prosedur):
verilənlər bazasında serverdə əvvəlcədən yazılıb saxlanılan, istədiyimiz vaxt yalnız bir adla çağıraraq işlədə bildiyimiz SQL kod blokudur.

Bir növ proqramlaşdırmadakı funksiyalara bənzəyir:
içində dəyişənlər (parameters), şərtlər (IF/ELSE) və bir neçə SQL əmri (SELECT, INSERT, UPDATE və s.) ola bilər.

Niyə İstifadə Olunur? (Üstünlükləri):
Təkrarçılığın qarşısını alır: Eyni uzun SQL sorğunu hər dəfə sıfırdan yazmaq əvəzinə, proseduru bir dəfə yaradıb adıyla çağırırsınız.

Performans (Sürət): 
Prosedurlar verilənlər bazası serverində əvvəlcədən kompilyasiya (tərtib) olunduğu üçün hər dəfə sıfırdan sorğu yazmaqdan daha sürətli işləyir.

Təhlükəsizlik:
İstifadəçilərə birbaşa cədvəllərə icazə vermək əvəzində yalnız həmin prosedurları işlətmək icazəsi verərək təhlükəsizliyi artıra bilərsiniz 
(SQL injection riskini azaldır).
  
---------------------------------------

--Dəyişiklik etmək üçün ALTER PROCEDURE
Kiçik Qeyd (ALTER PROCEDURE haqqında):
Şərhdə qeyd etdiyiniz kimi, əgər bu prosedur artıq əvvəldən bazada mövcuddursa və siz onun içindəki kodu dəyişmək istəyirsinizsə, 
CREATE əvəzinə mütləq ALTER PROCEDURE sözündən istifadə etməlisiniz. Əks halda SQL Server "bu adda obyekt mövcuddur" xətası verəcək.
----------------
  1.Sadə nümunə
Create procedure Adresegoreogrencilistesi (@detay varchar(20))
as
select * from Ogrenci WHERE OgrenciNo
in ( select OgrenciNo from OgrenciAdres where AdresDetay like @detay)

execute Adresegoreogrencilistesi '%Paris%'

2.Sadə nümunə
create procedure sehiregoreogrencilistesi (@il int)
as
select * from Ogrenci WHERE OgrenciNo 
in( select OgrenciNo from OgrenciAdres where sehir= @il )

execute sehiregoreogrencilistesi 35
