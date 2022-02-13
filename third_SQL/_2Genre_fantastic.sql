USE db_Publishing; 
SELECT distinct Books.b_name, Authors.first_name, Authors.surname FROM Authors 
INNER JOIN Authors_Books ON Authors.a_id=Authors_Books.a_id_book 
INNER JOIN Books ON Authors_Books.a_id_book=Books.b_id 
INNER JOIN Books_Genres ON Books_Genres.g_id_book=Books.b_id 
INNER JOIN Genres ON Books_Genres.id_genre=Genres.g_id 
WHERE Genres.g_name = "фантастика" ; 