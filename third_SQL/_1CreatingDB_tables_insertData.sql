CREATE DATABASE IF NOT EXISTS db_Publishing; 
USE db_Publishing; 
								/*Создание таблиц*/ 
CREATE TABLE IF NOT EXISTS Books (
	b_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	isbn VARCHAR(20), 
	b_name VARCHAR(50), 
	pages INT, date_publishing DATE); 
CREATE TABLE IF NOT EXISTS Authors (
	a_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	first_name VARCHAR(20), 
	surname VARCHAR(20)); 
CREATE TABLE IF NOT EXISTS Genres (
	g_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	g_name VARCHAR(20)); 
CREATE TABLE IF NOT EXISTS Authors_Books (
	a_id_book INT NOT NULL, 
    id_author INT NOT NULL, 
    PRIMARY KEY (a_id_book, id_author), 
    FOREIGN KEY (a_id_book) REFERENCES Books(b_id), 
    FOREIGN KEY (id_author) REFERENCES Authors(a_id)); 
CREATE TABLE IF NOT EXISTS Books_Genres (
	g_id_book INT NOT NULL, 
	id_genre INT NOT NULL, 
	PRIMARY KEY (g_id_book, id_genre), 
	FOREIGN KEY (g_id_book) REFERENCES Genres (g_id), 
	FOREIGN KEY (id_genre) REFERENCES Books (b_id)); 
								/*Добавление тестовых данных в таблицы*/ 
INSERT INTO Books (b_id, isbn, b_name, pages, date_publishing) 
VALUES (1, "1686-5139-11-2", "Нетворкинг", 256, "2020-02-05"); 
INSERT INTO Books (b_id, isbn, b_name, pages, date_publishing) 
VALUES (2, "91926-5179-2-5", "Не время драконов", 452, "2022-01-01"); 
INSERT INTO Books (b_id, isbn, b_name, pages, date_publishing) 
VALUES (3, "9196-519-2-4", "Что-то несущее", 333, "2019-02-03"); 
INSERT INTO Books (b_id, isbn, b_name, pages, date_publishing) 
VALUES (4, "5223-665-1-12", "Метро 2033", 654, "2015-12-12"); 
INSERT INTO Books (b_id, isbn, b_name, pages, date_publishing) 
VALUES (5, "1296-889-44-77", "Plus-plus", 222, "2012-07-12"); 
INSERT INTO Books (b_id, isbn, b_name, pages, date_publishing) 
VALUES (6, "1456-832-14-23", "Роботизация", 342, "2015-07-12"); 

INSERT INTO Authors (a_id, first_name, surname) 
VALUES (1, "Елена", "Вавилова"); 
INSERT INTO Authors (a_id, first_name, surname) 
VALUES (2, "Ник", "Перумов"); 
INSERT INTO Authors (a_id, first_name, surname) 
VALUES (3, "Андрей", "Безруков"); 
INSERT INTO Authors (a_id, first_name, surname) 
VALUES (4, "Сергей", "Лукьяненко"); 
INSERT INTO Authors (a_id, first_name, surname) 
VALUES (5, "Дмитрий", "Глуховский"); 
INSERT INTO Authors (a_id, first_name, surname) 
VALUES (6, "Бьёрн", "Страуструп"); 

INSERT INTO Genres (g_id, g_name) 
VALUES (1, "Фантастика"); 
INSERT INTO Genres (g_id, g_name) 
VALUES (2, "Ужасы"); 
INSERT INTO Genres (g_id, g_name) 
VALUES (3, "Триллер");
INSERT INTO Genres (g_id, g_name) 
VALUES (4, "Комедия"); 
INSERT INTO Genres (g_id, g_name) 
VALUES (5, "Обучающее"); 
INSERT INTO Genres (g_id, g_name) 
VALUES (6, "Роман"); 

INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (1, 1); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (1, 3); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (2, 2); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (2, 4); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (3, 2); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (4, 5); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (5, 6); 
INSERT INTO Authors_Books (a_id_book, id_author) 
VALUES (6, 6); 

INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (1, 3); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (1, 5); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (2, 1); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (2, 6); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (3, 2); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (3, 4); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (4, 3); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (4, 6); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (5, 2); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (5, 5); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (6, 1); 
INSERT INTO Books_Genres (g_id_book, id_genre) 
VALUES (6, 3); 