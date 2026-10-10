-- 1. Tabella Clienti (20 righe)
CREATE TABLE clienti (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    citta VARCHAR(50),
    regione VARCHAR(50)
);

INSERT INTO clienti (id, nome, citta, regione) VALUES
(1, 'Mario Rossi', 'Milano', 'Lombardia'),
(2, 'Laura Bianchi', 'Roma', 'Lazio'),
(3, 'Giuseppe Verdi', 'Napoli', 'Campania'),
(4, 'Anna Neri', 'Torino', 'Piemonte'),
(5, 'Francesco Gialli', 'Milano', 'Lombardia'),
(6, 'Sofia Moretti', 'Bologna', 'Emilia-Romagna'),
(7, 'Luca Ferrari', 'Firenze', 'Toscana'),
(8, 'Elena Romano', 'Roma', 'Lazio'),
(9, 'Davide Colombo', 'Milano', 'Lombardia'),
(10, 'Chiara Costa', 'Genova', 'Liguria'),
(11, 'Matteo Ricci', 'Venezia', 'Veneto'),
(12, 'Martina Conti', 'Torino', 'Piemonte'),
(13, 'Alessandro Esposito', 'Napoli', 'Campania'),
(14, 'Giorgia De Luca', 'Bari', 'Puglia'),
(15, 'Federico Barbieri', 'Bologna', 'Emilia-Romagna'),
(16, 'Valentina Fontana', 'Verona', 'Veneto'),
(17, 'Simone Rinaldi', 'Palermo', 'Sicilia'),
(18, 'Sara Galli', 'Firenze', 'Toscana'),
(19, 'Andrea Leone', 'Catania', 'Sicilia'),
(20, 'Francesca Marini', 'Roma', 'Lazio');

-- 2. Tabella Ordini (30 righe)
CREATE TABLE ordini (
    id_ordine INT PRIMARY KEY,
    cliente_id INT,
    prodotto VARCHAR(50),
    quantita INT,
    prezzo_unitario DECIMAL(10, 2),
    data_ordine DATE
);

INSERT INTO ordini (id_ordine, cliente_id, prodotto, quantita, prezzo_unitario, data_ordine) VALUES
(101, 1, 'Laptop', 1, 850.00, '2026-01-10'),
(102, 1, 'Mouse', 2, 25.00, '2026-01-12'),
(103, 3, 'Smartphone', 1, 600.00, '2026-01-15'),
(104, 2, 'Monitor', 1, 200.00, '2026-01-18'),
(105, 5, 'Tastiera', 1, 45.00, '2026-01-20'),
(106, 4, 'Stampante', 1, 120.00, '2026-01-22'),
(107, 7, 'Laptop', 1, 900.00, '2026-01-25'),
(108, 6, 'Cuffie', 2, 60.00, '2026-01-26'),
(109, 8, 'Smartphone', 1, 750.00, '2026-02-01'),
(110, 9, 'Monitor', 2, 190.00, '2026-02-03'),
(111, 10, 'Mouse', 3, 20.00, '2026-02-05'),
(112, 11, 'Tablet', 1, 400.00, '2026-02-08'),
(113, 12, 'Sedia Ergonomica', 1, 150.00, '2026-02-10'),
(114, 13, 'Scrivania', 1, 220.00, '2026-02-12'),
(115, 15, 'Laptop', 1, 850.00, '2026-02-14'),
(116, 14, 'Cuffie', 1, 55.00, '2026-02-15'),
(117, 16, 'Smartphone', 2, 650.00, '2026-02-18'),
(118, 17, 'Monitor', 1, 210.00, '2026-02-20'),
(119, 18, 'Stampante', 1, 130.00, '2026-02-22'),
(120, 19, 'Tastiera', 2, 40.00, '2026-02-25'),
(121, 2, 'Mouse', 1, 25.00, '2026-03-01'),
(122, 5, 'Smartphone', 1, 700.00, '2026-03-03'),
(123, 8, 'Tablet', 2, 380.00, '2026-03-05'),
(124, 1, 'Monitor', 1, 200.00, '2026-03-08'),
(125, 3, 'Cuffie', 4, 50.00, '2026-03-10'),
(126, 7, 'Tastiera', 1, 45.00, '2026-03-12'),
(127, 12, 'Laptop', 1, 890.00, '2026-03-15'),
(128, 15, 'Mouse', 2, 22.00, '2026-03-18'),
(129, 20, 'Smartphone', 1, 620.00, '2026-03-20'),
(130, 4, 'Monitor', 1, 205.00, '2026-03-22');
