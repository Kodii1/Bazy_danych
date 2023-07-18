CREATE TABLE Budynek(
    id_budynku SERIAL,
    Miasto TEXT NOT NULL,
    Ulica TEXT NOT NULL,
    Kod_pocztowy TEXT NOT NULL,
    CONSTRAINT Budynek_PK PRIMARY KEY (id_budynku)
);

ALTER SEQUENCE budynek_id_budynku_seq RESTART WITH 1;

CREATE TABLE Pracownik(
    id_pracownika SERIAL,
    Posada TEXT NOT NULL,
    Imie TEXT NOT NULL,
    Nazwisko TEXT NOT NULL,
    CONSTRAINT Pracownik_PK PRIMARY KEY (id_pracownika)
);

ALTER SEQUENCE Pracownik_id_pracownika_seq RESTART WITH 1;

CREATE TABLE Budynek_pracownik(
    id_Budynek_pracownik SERIAL,
    pracownik_nr INT NOT NULL,
    budynek_nr INT NOT NULL,
    CONSTRAINT Budynek_pracownik_PK PRIMARY KEY(id_Budynek_pracownik),
    CONSTRAINT Budynek_FK FOREIGN KEY (budynek_nr) REFERENCES Budynek (id_budynku)
);

ALTER SEQUENCE Budynek_pracownik_id_Budynek_pracownik_seq RESTART WITH 1;

CREATE TABLE Pomieszczenie(
    id_pomieszczenia SERIAL,
    Nazwa TEXT NOT NULL,
    Budynek_nr  INT NOT NULL,
    CONSTRAINT Pomieszczenie_PK PRIMARY KEY (id_pomieszczenia),
    CONSTRAINT Budynek_FK   FOREIGN KEY (Budynek_nr) REFERENCES Budynek(id_budynku)
);

ALTER SEQUENCE Pomieszczenie_id_pomieszczenia_seq RESTART WITH 1;

-- CREATE TABLE Budynek_pomieszczenie(
--     id_budynek_pomieszczenie SERIAL,
--     Budynek_nr INT NOT NULL,
--     pomieszczenie_nr INT NOT NULL,
--     CONSTRAINT Budynek_pomieszczenie_PK PRIMARY KEY (id_budynek_pomieszczenie),
--     CONSTRAINT Budynek_FK FOREIGN KEY (Budynek_nr) REFERENCES Budynek(id_budynku)
-- );

-- ALTER SEQUENCE Budynek_pomieszczenie_id_budynek_pomieszczenie_seq RESTART WITH 1;

CREATE TABLE Dostep(
    id_dostepu SERIAL,
    pomieszczenie_nr INT NOT NULL,
    pracownik_nr INT NOT NULL,
    CONSTRAINT dostep_PK PRIMARY KEY (id_dostepu),
    CONSTRAINT Pomieszczenie_FK FOREIGN KEY (pomieszczenie_nr) REFERENCES Pomieszczenie(id_pomieszczenia),
    CONSTRAINT Pracownik_FK FOREIGN KEY (pracownik_nr) REFERENCES Pracownik(id_pracownika)
);

ALTER SEQUENCE Dostep_id_dostepu_seq RESTART WITH 1;

CREATE TABLE Sprzet(
    id_sprzetu SERIAL,
    Marka TEXT NOT NULL,
    Model TEXT NOT NULL,
    Numer_seryjny TEXT NOT NULL,
    Pomieszczenie_nr INT NOT NULL,
    Kategoria TEXT NOT NULL,
    CONSTRAINT Sprzet_PK PRIMARY KEY (id_sprzetu),
    CONSTRAINT Pomieszczenie_FK FOREIGN KEY (Pomieszczenie_nr) REFERENCES Pomieszczenie(id_pomieszczenia)
);

ALTER SEQUENCE Sprzet_id_sprzetu_seq RESTART WITH 1;

CREATE TABLE Naprawa (
    id_naprawy SERIAL,
    sprzet_nr INT NOT NULL,
    Nazwa TEXT NOT NULL,
    Koszt INT,
    data_naprawy DATE NOT NULL,
    CONSTRAINT Naprawa_PK PRIMARY KEY (id_naprawy),
    CONSTRAINT Sprzet_FK FOREIGN KEY (sprzet_nr) REFERENCES Sprzet(id_sprzetu)
);

ALTER SEQUENCE naprawa_id_naprawy_seq RESTART WITH 1;

-- CREATE TABLE Sprzet_naprawa(
--     id_sprzet_naprawa SERIAL,
--     Sprzet_nr INT NOT NULL,
--     Naprawa_nr INT NOT NULL,
--     CONSTRAINT sprzet_naprawa_PK PRIMARY KEY (id_sprzet_naprawa),
--     CONSTRAINT Sprzet_FK FOREIGN KEY (Sprzet_nr) REFERENCES Sprzet(id_sprzetu),
--     CONSTRAINT Naprawa_FK FOREIGN KEY (Naprawa_nr) REFERENCES Naprawa(id_naprawy)
-- );

-- ALTER SEQUENCE sprzet_naprawa_id_sprzet_naprawa_seq RESTART WITH 1;

CREATE TABLE Sprzet_pracownik(
    id_Sprzet_pracownik SERIAL,
    pracownik_nr INT NOT NULL,
    sprzet_nr INT NOT NULL,
    Data_wydania_sprzetu DATE NOT NULL,
    Data_oddania_sprzetu DATE NOT NULL,
    CONSTRAINT Sprzet_pracownik_PK PRIMARY KEY (id_Sprzet_pracownik),
    CONSTRAINT Sprzet_FK FOREIGN KEY (sprzet_nr) REFERENCES Sprzet(id_sprzetu),
    CONSTRAINT Pracownik_FK FOREIGN KEY (pracownik_nr) REFERENCES Pracownik(id_pracownika)
);

ALTER SEQUENCE Sprzet_pracownik_id_Sprzet_pracownik_seq RESTART WITH 1;  

CREATE TABLE Dostawca(
    id_dostawcy SERIAL,
    Ulica TEXT NOT NULL,
    Kod_pocztowy TEXT NOT NULL,
    Miasto TEXT NOT NULL,
    Nazwa TEXT NOT NULL,
    CONSTRAINT Dostawca_PK PRIMARY KEY (id_dostawcy)
);

ALTER SEQUENCE Dostawca_id_dostawcy_seq RESTART WITH 1;

CREATE TABLE sprzet_dostawca(
    id_sprzet_dostawca SERIAL,
    dostawca_nr INT NOT NULL,
    sprzet_nr INT NOT NULL,
    CONSTRAINT sprzet_dostawca_PK PRIMARY KEY (id_sprzet_dostawca),
    CONSTRAINT Dostawca_FK FOREIGN KEY (dostawca_nr) REFERENCES Dostawca(id_dostawcy),
    CONSTRAINT Sprzet_FK FOREIGN KEY (sprzet_nr) REFERENCES Sprzet(id_sprzetu)
);

CREATE TABLE Magazyn(
    id_magazynu SERIAL,
    Ulica TEXT NOT NULL,
    Kod_pocztowy TEXT NOT NULL,
    Miasto TEXT NOT NULL,
    CONSTRAINT Magazyn_PK PRIMARY KEY (id_magazynu)
);

ALTER SEQUENCE Magazyn_id_magazynu_seq RESTART WITH 1;

CREATE TABLE dostawca_magazyn(
    id_dostawca_magazyn SERIAL,
    dostawca_nr INT NOT NULL,
    magazyn_nr INT NOT NULL,
    CONSTRAINT dostawca_magazyn_PK PRIMARY KEY(id_dostawca_magazyn),
    CONSTRAINT dostawca_FK FOREIGN KEY (dostawca_nr) REFERENCES Dostawca(id_dostawcy),
    CONSTRAINT magazyn_FK FOREIGN KEY (magazyn_nr) REFERENCES Magazyn(id_magazynu)
);

ALTER SEQUENCE dostawca_magazyn_id_dostawca_magazyn_seq RESTART WITH 1;
