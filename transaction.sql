select * from BankKart

Begin transaction
     update BankKart set Bakiye = Bakiye - 50 where OgrenciNo = 257
     update BankKart set Bakiye = Bakiye + 50 Where OgrenciNo = 389
Commit transaction