---DATI E INSERIMENTO---
INSERT INTO clienti (id, nome, citta) 
VALUES (101, 'Mario Rossi', 'Milano');

INSERT INTO prodotti (id_prodotto, nome_prodotto, prezzo) 
VALUES (1, 'Mouse Wireless', 25.50);

---SELEZIONE E FILTRI---
SELECT * FROM clienti 
WHERE citta = 'Milano';

SELECT nome_prodotto, prezzo FROM prodotti 
WHERE prezzo > 50;

---ORDINAMENTO---
SELECT * FROM prodotti 
ORDER BY prezzo ASC;

SELECT * FROM clienti 
ORDER BY nome DESC;

---VALORI MASSIMI E MINIMI---
SELECT MAX(prezzo) AS prezzo_massimo FROM prodotti;

SELECT MIN(prezzo) AS prezzo_minimo FROM prodotti;

---UNIONI TRA TABELLE---
SELECT ordini.id_ordine, cliente_nome, ordini.data_ordine
FROM ordini
INNER JOIN clienti ON ordini.id_cliente = clienti.id