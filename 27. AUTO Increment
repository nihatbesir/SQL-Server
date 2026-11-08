Auto-increment (avtomatik artım):
verilənlər bazasında yeni sətir (məlumat) əlavə olunduqda, hər dəfə avtomatik olaraq bir vahid artan unikal rəqəm (məsələn: 1, 2, 3...) yaradan xüsusiyyətdir.

Nə üçün istifadə olunur?
Hər bir istifadəçiyə, məhsula və ya sifarişə təkrarolunmaz unikal ID (user_id, order_id və s.) vermək üçün.

Üstünlüyü: Nömrələri əl ilə yazmağa ehtiyac qalmır, verilənlər bazası bunu özü avtomatik tənzimləyir.

--------------------------
-- Nümunə cədvəl strukturu
CREATE TABLE OgrenciLog (
    LogId INT IDENTITY(1,1) PRIMARY KEY, -- Avtomatik yaradılır
    OgrenciSayisi INT,
    Tarih DATETIME
);


INSERT INTO OgrenciLog (OgrenciSayisi, Tarih)
VALUES (121, GETDATE());

LogId sütunu IDENTITY(1,1) istifadə etdiyi üçün onu INSERT siyahısına yazmırsınız. SQL Server özü avtomatik olaraq 1, 2, 3 və s. rəqəmlərini təyin edir.
