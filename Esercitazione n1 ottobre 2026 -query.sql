---Selezionare i clienti che risiedono a Milano---
SELECT *
FROM clienti
WHERE citta = 'Milano';

---Selezionare gli ordini ordinati per prezzo_unitario in modo decrescente---
SELECT *
FROM ordini
ORDER BY prezzo_unitario DESC;

---Calcolare il totale per ciascun ordine moltiplicando quantità per prezzo_unitario (totale_ordine); mostrando l'id dell'ordine e il totale
SELECT id_ordine, prodotto, (quantita * prezzo_unitario) AS totale_ordini
FROM ordini;

---Contare quanti ordini sono stati effettuati da ciascun cliente_id---
SELECT cliente_id, COUNT(id_ordine)
FROM ordini
GROUP BY cliente_id;

---Mostrare l'elenco di tutti gli ordini indicando l'ID nell'ordine,il nome del cliente, il prodotto acquisato e la data dell'ordine---
SELECT o.id_ordine, c.nome, o.prodotto, o.data_ordine
FROM ordini o
INNER JOIN clienti c ON o.cliente_id = c.id;

---Mostrare tutti i clienti(anche chi non ha effettuato ordini) insieme ai prodotti ordinati---
SELECT c.id, c.nome, o.id_ordine, o.prodotto
FROM clienti c
LEFT JOIN ordini o ON c.id = o.cliente_id;
---Utilizzare una RIGHT JOIN per mostrare tutti gli ordini e i rispettivi dati dei clienti associati---
SELECT c.id, c.nome, o.id_ordine, o.prodotto
FROM clienti c
RIGHT JOIN ordini o ON c.id = o.cliente_id;
