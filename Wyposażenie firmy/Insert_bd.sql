--INSERT BUDYNEK
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (1,'ul.Królowej Marii 30/10','Poznań','48-125');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (2,'ul.Króla Marcina 2/11','Gdańsk','43-432');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (3,'ul.Piotrka Rinka 2/1','Wawrszawa','43-432');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (4,'ul.Królowej Ryżu 2/4','Gdynia','42-111');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (5,'ul.Królowej Bony 2/12','Wadowice','41-155');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (6,'ul.Króla Adriana 2/14','Kraków','43-482');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (7,'ul.Królowej Karoliny 2/11','Łódź','11-432');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (8,'ul.Andrzeja Bony 2/11','Sopot','42-122');
INSERT INTO budynek (id_budynku,Ulica,Miasto,kod_pocztowy) VALUES (9,'ul.Marii Bony 2/11','Wrocław','45-762');


--INSERT Pomieszenie
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (1,'1',1);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (2,'2',1);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (3,'3',1);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (4,'1',2);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (5,'2',2);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (6,'3',2);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (7,'7',3);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (8,'8',3);
INSERT INTO Pomieszczenie (id_pomieszczenia,Nazwa,Budynek_nr) VALUES (9,'9',3);

--INNERT pracownik
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (1,'Kierownik','Adrian','Jarząb');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (2,'Kierownik','Piotr','Rink');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (3,'Kierownik','Mariusz','Rink');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (4,'Pracownik Biurowy','Igor','Myszka');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (5,'Pracownik Biurowy','Mariusz','Klawiatura');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (6,'Pracownik Biurowy','Piotr','Lubiński');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (7,'Sprzątczka','Karolina','Lubińska');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (8,'Technik','Piotr','Fundej');
INSERT INTO pracownik (id_pracownika,Posada,Imie,nazwisko) VALUES (9,'Recepcjonista','Maria','Rink');


--INSERT Budynek_pracownik
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (1,1);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (2,2);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (3,3);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (4,1);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (5,1);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (6,2);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (7,2);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (8,3);
INSERT INTO Budynek_pracownik (pracownik_nr,budynek_nr) VALUES (9,3);

--INSERT Budynek_pomieszczenie
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (1,1);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (1,2);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (1,3);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (2,4);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (2,5);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (2,6);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (3,7);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (3,8);
-- INSERT INTO Budynek_pomieszczenie (Budynek_nr,pomieszczenie_nr) VALUES (3,9);



--INSERT Dostep
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (1,1,1);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (2,4,2);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (3,9,3);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (4,2,1);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (5,3,1);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (6,1,2);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (7,3,2);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (8,7,3);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (9,8,3);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (10,3,7);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (11,3,8);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (12,1,8);
INSERT INTO dostep (id_dostepu,pomieszczenie_nr,pracownik_nr) VALUES (13,1,9);


--INSERT sprzet
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(1,'SAMSUNG','ODYSEY G7','123514654ASD',2,'Monitor');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(2,'SteelSeries','RIVAL 5','125216755GF',1,'Myszka');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(3,'IPHONE','14 PRO MAX','156895215DS',3,'Telefon');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(4,'SAMSUNG','GALAXY S12','156146586YT',4,'Telefon');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(5,'SAMSUNG','ODYSEY G5','026553022DS',5,'Monitor');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(6,'MSI','GS73 Stealth 8RF','156922166GH',6,'Laptop');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(7,'BLACK RED WHITE','DYWAN 120X120CM RED-CARROT','256561168EW',7,'Dywan');
INSERT into sprzet (id_sprzetu,Marka,Model,Numer_seryjny,Pomieszczenie_nr,Kategoria) VALUES(8,'BROTHER','700W','8841218SD89',8,'Drukarka');

--INSERT Naprawa
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(1,1,'Pęknięta matryca',1200,'2020-04-05');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(2,2,'Uszkodony sensor',100,'2021-02-03');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(3,3,'Pęknięty ekran',1200,'2023-01-01');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,data_naprawy) VALUES(4,4,'Uszkodony guzik "Volume Up" ','2020-07-05');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(5,5,'Pęknięta matryca',800,'2024-08-20');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(6,6,'Wyrywany monitor',2200,'2021-11-19');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(7,1,'Rozlana Matryca',1400,'2022-12-18');
INSERT into Naprawa (id_naprawy,sprzet_nr,Nazwa,Koszt,data_naprawy) VALUES(8,1,'Uszkodzone wejście HDMI',200,'2020-01-01');

--INSERT sprzet_naprawa
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (1,1,1);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (2,2,2);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (3,3,3);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (4,4,4);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (5,5,5);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (6,6,6);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (7,1,7);
-- INSERT INTO sprzet_naprawa  (id_sprzet_naprawa ,Sprzet_nr,Naprawa_nr) VALUES (8,1,8);

--INSERT Sprzet_pracownik
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(1,1,8,'2022-3-19','2023-5-19');
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(2,2,7,'2020-5-16','2023-6-19');
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(3,3,6,'1005-3-14','2023-7-19');
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(4,4,5,'2013-3-13','2023-8-19');
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(5,5,4,'2020-3-11','2023-9-19');
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(6,6,3,'2012-3-01','2023-5-31');
INSERT INTO Sprzet_pracownik (id_Sprzet_pracownik,pracownik_nr,sprzet_nr,Data_wydania_sprzetu,Data_oddania_sprzetu) VALUES(7,7,2,'2000-3-05','2023-5-30');



-- INERT dostawca
INSERT INTO dostawca (id_dostawcy,Ulica,Kod_pocztowy,Miasto,Nazwa) VALUES (1,'Ul. Kazimierza Kościuszki 411','81-967','Koziołkowo','Sklep Banan');
INSERT INTO dostawca (id_dostawcy,Ulica,Kod_pocztowy,Miasto,Nazwa) VALUES (2,'Ul. Kaziemierza Redbula 32','83-634','Kraków','Media Markt');
INSERT INTO dostawca (id_dostawcy,Ulica,Kod_pocztowy,Miasto,Nazwa) VALUES (3,'Ul. Kazimierza Kościuszki 12','43-567','Warszawa','XKOM');
INSERT INTO dostawca (id_dostawcy,Ulica,Kod_pocztowy,Miasto,Nazwa) VALUES (4,'Ul. Kazimierza Rinka 203','54-345','Sopot','Skelep Zbychu');
INSERT INTO dostawca (id_dostawcy,Ulica,Kod_pocztowy,Miasto,Nazwa) VALUES (5,'Ul. Kazimierza Tralalala 232','88-155','Gdynia','Hurtownia Gdynia');
INSERT INTO dostawca (id_dostawcy,Ulica,Kod_pocztowy,Miasto,Nazwa) VALUES (6,'Ul. Kazimierza Jakiegoś 124','90-322','Poznań','Skelep Mariusz');

--INSERT sprzet_dostawca
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (1,1,1);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (2,2,2);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (3,3,3);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (4,4,4);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (5,5,5);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (6,6,6);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (7,1,7);
INSERT INTO sprzet_dostawca (id_sprzet_dostawca,dostawca_nr,sprzet_nr) VALUES (8,2,8);

--INSERT magazyn
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (1,'ul. Kaziemierza Kościuszki 39','80-155','Warszawa');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (2,'ul. Kaziemierza Redbula 12','80-155','Kraków');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (3,'ul. Kaziemierza Poncjuesza 35','80-155','Koziołkowo');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (4,'ul. Kaziemierza Warszawskiego 25','80-155','Gdynia');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (5,'ul. Kaziemierza Marcinowskiego 16','80-155','Sopot');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (6,'ul. Kaziemierza Juzefowicza 18','80-155','Kraków');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (7,'ul. Kaziemierza Rinka 65','80-155','Wrocław');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (8,'ul. Oskara Kościuszki 65','80-155','Łódź');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (9,'ul. Piotrka Kościuszki 15','80-155','Poznań');
INSERT INTO magazyn (id_magazynu,Ulica,Kod_pocztowy,Miasto) VALUES (10,'ul. Marcina Kościuszki 188','80-155','Gdańsk');

--INSERT dostawca_magazyn
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(1,1);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(2,2);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(3,3);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(4,4);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(5,5);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(6,6);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(1,7);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(2,8);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(3,9);
INSERT INTO dostawca_magazyn (dostawca_nr,magazyn_nr) VALUES(4,10);
