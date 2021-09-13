----------------------------------------------------------------------------------------------
---Ejemplos de negocios
----------------------------------------------------------------------------------------------


---¿Qué nacionalidades hay?

SELECT nationality FROM authors GROUP BY nationality;

---¿Cuantos escritores hay de cada nacionalidad?

SELECT nationality, COUNT(author_id) as qty_authors FROM authors GROUP BY nationality;

---¿Cuantos libros hay de cada nacionalidad?

SELECT a.nationality, COUNT(b.book_id) as qty_book
FROM books as b
JOIN authors as a
ON b.author_id = a.author_id
GROUP BY a.nationality;

---¿Cual es el promedio/desviacion standard del precio de los libros?

SELECT AVG(price) as avg_price, STDDEV(price) as stddev_price FROM books;

---¿Cual es el precio maximo/minimo de un libro?

SELECT MAX(price) as max_price, MIN(price) as min_price FROM books;

---¿Cual es el precio maximo/minimo de un libro?

SELECT c.name, t.type, b.title, a.name, a.nationality
FROM transactions as t
LEFT JOIN clients as c
ON c.client_id = t.client_id
LEFT JOIN books as b
ON b.book_id = t.book_id
LEFT JOIN authors as a
ON b.author_id = a.author_id;
