Transaction (Tranzaksiya):
verilənlər bazasında bir və ya bir neçə əməliyyatın (məsələn, INSERT, UPDATE, DELETE) hamısının birlikdə,
vahid bir bütöv kimi icra olunmasını təmin edən mexanizmdir.
     
Əsas qayda budur: Ya bütün əməliyyatlar uğurla icra olunur, ya da hər hansı səhv baş verərsə, heç biri tətbiq olunmur (baza əvvəlki vəziyyətinə qayıdır).

Əsas Komandalar:
BEGIN TRANSACTION (və ya BEGIN TRAN): Tranzaksiyanın başlandığını bildirir. Bundan sonra edilən dəyişikliklər hələlik müvəqqəti olur.

COMMIT: Əməliyyatlar uğurla başa çatdıqda dəyişiklikləri bazaya daimi olaraq (həmişəlik) yazır.

ROLLBACK: Proses zamanı hər hansı xəta baş verərsə, tranzaksiya zamanı edilən bütün dəyişiklikləri ləğv edir və bazanı əvvəlki təhlükəsiz vəziyyətinə qaytarır

-------------------------------------------------------------------     
Begin transaction
     update BankKart set Bakiye = Bakiye - 50 where OgrenciNo = 257
     update BankKart set Bakiye = Bakiye + 50 Where OgrenciNo = 389
Commit transaction
