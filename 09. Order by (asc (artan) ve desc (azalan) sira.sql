--Bu SQL sorğuları `ORDER BY` operatorundan istifadə edərək `Ogrenci` cədvəlindəki məlumatların artan (`ASC`) 
  --və ya azalan (`DESC`) sıra ilə çeşidlənməsini həyata keçirir:

ORDER BY OgrenciNo asc — Tələbələri nömrələrinə görə artan sıra ilə (kiçikdən böyüyə) sıralayır.
ORDER BY OgrenciNo desc — Tələbələri nömrələrinə görə azalan sıra ilə (böyükdən kiçiyə) sıralayır.
ORDER BY ErkekMi, Ad — Əvvəlcə cinsiyyətə (`ErkekMi`), daha sonra isə adlara görə artan sıra ilə sıralayır.
ORDER BY ErkekMi, Ad desc — Cinsiyyətə görə artan, adlara görə isə azalan sıra ilə (Z-dən A-ya) sıralayır.
ORDER BY ErkekMi desc, Ad desc — Həm cinsiyyət, həm də ad sütunları üzrə azalan sıra ilə çeşidləmə aparır.
