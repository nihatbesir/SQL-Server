Bu SQL sorğuları `Ogrenci` cədvəli üzərində müxtəlif şərtlərlə (`WHERE`, `LIKE`, `IN`, `AND`, `OR`) məlumatların seçilməsi və filtrlənməsini həyata keçirir:

SELECT * FROM Ogrenci — Cədvəldəki bütün sütunları və sətirləri gətirir.
SELECT Ad,Soyad,ErkekMi FROM Ogrenci — Tələbələrin yalnız ad, soyad və cinsiyyət məlumatlarını seçir.
SELECT * FROM Ogrenci WHERE ErkekMi = 1 — Cinsiyyəti kişi olan tələbələrin bütün məlumatlarını göstərir.
SELECT Ad,Soyad,TCKimlikNo FROM Ogrenci WHERE DogumTarihi >= '2000' — Doğum tarixi 2000 və ya ondan sonrakı olanların ad, soyad və TC nömrəsini seçir.
SELECT * FROM Ogrenci WHERE DogumTarihi <= '2000' — Doğum tarixi 2000 və ya ondan əvvəlki olanların bütün məlumatlarını seçir.
SELECT * FROM Ogrenci WHERE KayitTarihi >= '01-01-2021' — Qeydiyyat tarixi 2021-ci il və ya ondan sonrakı olan tələbələri seçir.
SELECT * FROM Ogrenci Where KayitTarihi > '01-01-2020' AND ErkekMi = 1 — Qeydiyyat tarixi 2020-ci ildən sonrakı və kişi olan tələbələri seçir.
SELECT * FROM Ogrenci Where KayitTarihi > '01-01-2020' AND ErkekMi = 0` — Qeydiyyat tarixi 2020-ci ildən sonrakı və qadın olan tələbələri seçir.
SELECT * FROM Ogrenci WHERE Soyad = 'Kaya' OR Ad = 'Zeynep' — Soyadı "Kaya" və ya adı "Zeynep" olan tələbələri seçir.
SELECT * FROM Ogrenci WHERE OgrenciNo in (421,786,821) — Nömrəsi verilən siyahıdakılardan (421, 786, 821) biri olan tələbələri seçir.
SELECT * FROM Ogrenci WHERE Soyad like 'K%' — Soyadı "K" hərfi ilə başlayan tələbələri seçir.
SELECT * FROM Ogrenci WHERE TCKimlikNo like '%78%' — TC kimlik nömrəsinin hər hansı hissəsində "78" keçən tələbələri seçir.
