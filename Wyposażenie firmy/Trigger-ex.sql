-- Po wpisaniu nowego użytkoniwka w Sprzet_pracownik pojawi się on przypisany do sprzętu jako ostatni użytkownik w tabeli sprzęt
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(9,4,1,'2033-3-25','2024-6-01');
-- Po wpisaniu nowego użytkoniwka w Sprzet_pracownik pojawi się on konmunikat, że sprzęt jest jeszcze wypożyczany przez innego użytkowanika
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(10,3,2,'2000-3-05','2023-5-30');