USE db_Publishing; 
WITH max_number_of_books AS (SELECT first_name, surname, COUNT(surname) AS max_books FROM Authors 
INNER JOIN Authors_Books ON Authors.a_id=Authors_Books.a_id_book GROUP BY Authors_Books.a_id_book) 
SELECT first_name, surname, max_books FROM max_number_of_books 
WHERE max_books = (SELECT MAX(max_books) FROM max_number_of_books); 