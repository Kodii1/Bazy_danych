--Wyświetlenie pomieszczeń razem z budynkami do którtch należą
SELECT * FROM budynek INNER JOIN podmieszczenie ON budynek.id_budynku=pomieszczenie.budynek_nr;
--Wyświetlenie ilości napraw sprzętu
SELECT sprzet.id_sprzetu, COUNT(*) FROM sprzet INNER JOIN naprawa ON sprzet.id_sprzetu=naprawa.sprzet_nr GROUP BY id_sprzetu;
--Wyświetlenie średniej ceny naprawy z zaokrągleniem do pełnej liczby
SELECT round(AVG(koszt)) FROM naprawa ;
--Wyświelenie wszystkich sprzętów od marek na S
SELECT * FROM sprzet where marka ILIKE 'S%';
--Wyświetlenie sprzętów który nigdy nie miał właściciela
SELECT * FROM sprzet where ostatni_użytkownik IS NULL;
--Wyświetl pracowników którzy wzieli na siebie sprzęt i mają na imię adrian
SELECT * FROM pracownik WHERE EXISTS (SELECT * FROM sprzet_pracownik WHERE sprzet_pracownik.pracownik_nr=pracownik.id_pracownika) AND imie ILIKE 'adrian';
--Stwórz skrót do "Sprzęt"
CREATE VIEW sprzetV2 AS SELECT * from sprzet;
--Usuwa magazyn z id =11
DELETE FROM magazyn WHERE magazyn.id_magazynu=11
--Zmiana imiona uzytkownika z id =1 
UPDATE pracownik SET imie='Marcin'  where id_pracownika=1 
-- Ustawienie kosztu naprawy o 5% większego
UPDATE naprawa SET koszt = koszt * 1.05;
-- Wypisz osoby które nigdy nie używały sprzętu
SELECT imie FROM pracownik WHERE pracownik.id_pracownika NOT IN (SELECT pracownik.id_pracownika FROM sprzet_pracownik WHERE sprzet_pracownik.pracownik_nr=pracownik.id_pracownika);
--Długość posiadania sprzętu
SELECT *,data_oddania_sprzetu-data_wydania_sprzetu AS dlugosc_posiadania_sprzetu from sprzet_pracownik;
--Wyswietlenie informacji o pomieszczeniu wraz z informacjami o budynku
SELECT *  from budynek, pomieszczenie where pomieszczenie.budynek_nr=budynek.id_budynku;