SUM() Syntax
  
SELECT SUM(column_name)
FROM table_name
WHERE condition;

-------------------
Nümunə ilə izah
--Bu SQL sorğusu `Ogrenci` cədvəlindəki bütün tələbələrin 2-ci imtahan ballarının cəmini hesablayır.
select sum(SinavNotu2) from Ogrenci
