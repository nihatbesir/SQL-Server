Trigger (tətik): verilənlər bazasında müəyyən bir hadisə baş verdikdə avtomatik olaraq işə düşən xüsusi proqram kodudur.

Bunu sadə bir həyat nümunəsi ilə izah edək:

Həyatdan nümunə: Evin girişinə qoyulan hərəkət sensoru (motion sensor) kimidir.
Kimsə qapıdan keçəndə (hadisə) siz heç bir düyməni basmırsınız, lakin işıq avtomatik olaraq yanır (trigger işə düşür).

Verilənlər bazasında: Cədvəldə məlumat əlavə olunanda (INSERT), dəyişdiriləndə (UPDATE) və ya silinəndə (DELETE) 
bazanın özü bunu hiss edir və arxa planda yazdığınız trigger avtomatik işə düşür.

Nə üçün istifadə olunur?
Loglama (Tarixçə yazmaq): Məsələn, kimsə cədvəldən tələbə siləndə, trigger avtomatik olaraq başqa
bir cədvələ "filankəs bu tarixdə silindi" deyə qeyd yazır (əvvəlki nümunənizdə olduğu kimi).

Avtomatik yoxlama: Məlumat bazaya yazılmamışdan əvvəl onun düzgünlüyünü avtomatik yoxlamaq üçün.

----------------------------
create trigger ilkTrigger
on Ogrenci 
after insert
as 
begin 
   insert into OgrenciLog (OgrenciSayisi,Tarih) 
   values ((select count(OgrenciNo) from Ogrenci), getdate())
end

   izah
Bu kod ilkTrigger adlanan bir tetikleyici (trigger) yaradır. Onun əsas məqsədi Ogrenci cədvətinə hər dəfə yeni tələbə əlavə olunanda (AFTER INSERT),
avtomatik olaraq OgrenciLog cədvətinə qeyd yazmaqdır
----------------------------
create trigger Triggersecond
on Ogrenci 
after delete
as 
begin 
   insert into OgrenciLog (OgrenciSayisi,Tarih) 
   values ((select count(OgrenciNo) from Ogrenci), getdate())
end

  izah
Bu kod əvvəlki nümunəyə çox bənzəyir, lakin aralarındakı tək və ən vacib fərq after delete hissəsidir. 
Yəni bu trigger məlumat əlavə olunanda deyil, cədvəldən məlumat silindikdən sonra avtomatik işə düşür.
