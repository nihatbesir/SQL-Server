--Bu SQL əmrləri `Ogrenci` cədvəlindən müəyyən şərtlərə uyğun gələn qeydləri silir:

DELETE from Ogrenci WHERE OgrenciNo=981 and Ad='Ebru'  — Tələbə nömrəsi 981 və adı Ebru olan konkret qeydi silir.
DELETE from Ogrenci WHERE ErkekMi=0  — Cinsiyyəti qız (`ErkekMi = 0`) olan bütün tələbələri cədvəldən silir.
DELETE from Ogrenci WHERE Soyad='Acar' and ErkekMi=0  — Soyadı "Acar" olan qız tələbələri silir.
DELETE from Ogrenci WHERE KayitTarihi> '2022-09-01'  — Qeydiyyat tarixi 2022-ci il sentyabrın 1-indən sonrakı olan tələbə qeydlərini silir.
