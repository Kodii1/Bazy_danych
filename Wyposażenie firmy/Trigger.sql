-- Po wpisaniu nowego użytkoniwka w Sprzet_pracownik pojawi się on przypisany do sprzętu jako ostatni użytkownik
ALTER TABLE sprzet ADD COLUMN Ostatni_użytkownik TEXT;
CREATE OR REPLACE FUNCTION update_sprzet_owner()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Sprzet
    SET Ostatni_użytkownik = CONCAT(Pracownik.Imie, ' ', Pracownik.Nazwisko)
    FROM pracownik
    WHERE pracownik.id_pracownika = NEW.pracownik_nr
    AND Sprzet.id_sprzetu = NEW.sprzet_nr
    AND NEW.id_sprzet_pracownik = (
        SELECT id_sprzet_pracownik
        FROM sprzet_pracownik
        WHERE sprzet_nr = NEW.sprzet_nr
        ORDER BY id_sprzet_pracownik DESC
        LIMIT 1
    );

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_sprzet_owner_trigger
AFTER INSERT ON Sprzet_pracownik
FOR EACH ROW
EXECUTE FUNCTION update_sprzet_owner();

--Nie można wpisać nowego użytkownika sprzętu dopuki stary nie zwróci sprzętu

CREATE OR REPLACE FUNCTION check_data_oddania()
RETURNS TRIGGER AS $$
DECLARE
    data_oddania DATE;
BEGIN
    SELECT data_oddania_sprzetu INTO data_oddania
    FROM Sprzet_pracownik
    WHERE sprzet_nr = NEW.sprzet_nr
    ORDER BY data_oddania_sprzetu DESC
    LIMIT 1;

    IF data_oddania IS NOT NULL AND (data_oddania > NEW.data_wydania_sprzetu OR (NEW.data_oddania_sprzetu IS NOT NULL AND NEW.data_oddania_sprzetu <= data_oddania)) THEN
        RAISE EXCEPTION 'Nie można przypisać sprzętu do innego pracownika przed oddaniem przez aktualnego użytkownika.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_data_oddania_trigger
BEFORE INSERT OR UPDATE ON Sprzet_pracownik
FOR EACH ROW
EXECUTE FUNCTION check_data_oddania();


