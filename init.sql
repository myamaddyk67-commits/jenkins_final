CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `published_year` int(11) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `cover_image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `books` (`id`, `title`, `author`, `genre`, `published_year`, `rating`, `cover_image`) VALUES
(1, 'The Hunger Games', 'Suzanne Collins', 'Dystopian', 2008, 4.70, 'https://covers.openlibrary.org/b/isbn/9780439023481-L.jpg'),
(2, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Fantasy', 1997, 4.90, 'https://covers.openlibrary.org/b/isbn/9780590353427-L.jpg'),
(3, 'The Fault in Our Stars', 'John Green', 'Romance', 2012, 4.60, 'https://covers.openlibrary.org/b/isbn/9780525478812-L.jpg'),
(4, '1984', 'George Orwell', 'Dystopian', 1949, 4.80, 'https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg'),
(5, 'To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960, 4.90, 'https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg'),
(6, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937, 4.80, 'https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg'),
(7, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925, 4.70, 'https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg'),
(8, 'The Maze Runner', 'James Dashner', 'Science Fiction', 2009, 4.50, 'https://covers.openlibrary.org/b/isbn/9780385737951-L.jpg'),
(9, 'The Alchemist', 'Paulo Coelho', 'Adventure', 1988, 4.70, 'https://covers.openlibrary.org/b/isbn/9780061122415-L.jpg'),
(10, 'The Book Thief', 'Markus Zusak', 'Historical', 2005, 4.80, 'https://covers.openlibrary.org/b/isbn/9780375842207-L.jpg'),
(11, 'Pride and Prejudice', 'Jane Austen', 'Classic', 1813, 4.90, 'https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg'),
(12, 'The Da Vinci Code', 'Dan Brown', 'Thriller', 2003, 4.60, 'https://covers.openlibrary.org/b/isbn/9780307474278-L.jpg'),
(13, 'The Girl on the Train', 'Paula Hawkins', 'Thriller', 2015, 4.30, 'https://covers.openlibrary.org/b/isbn/9781594633669-L.jpg'),
(14, 'Divergent', 'Veronica Roth', 'Dystopian', 2011, 4.50, 'https://covers.openlibrary.org/b/isbn/9780062024039-L.jpg'),
(15, 'The Catcher in the Rye', 'J.D. Salinger', 'Classic', 1951, 4.40, 'https://covers.openlibrary.org/b/isbn/9780316769488-L.jpg'),
(16, 'The Chronicles of Narnia', 'C.S. Lewis', 'Fantasy', 1950, 4.80, 'https://covers.openlibrary.org/b/isbn/9780066238500-L.jpg'),
(17, 'The Shining', 'Stephen King', 'Horror', 1977, 4.70, 'https://covers.openlibrary.org/b/isbn/9780307743657-L.jpg'),
(18, 'The Kite Runner', 'Khaled Hosseini', 'Drama', 2003, 4.80, 'https://covers.openlibrary.org/b/isbn/9781594631931-L.jpg'),
(19, 'The Lightning Thief', 'Rick Riordan', 'Fantasy', 2005, 4.70, 'https://covers.openlibrary.org/b/isbn/9780786838653-L.jpg'),
(20, 'Twilight', 'Stephenie Meyer', 'Romance', 2005, 4.30, 'https://covers.openlibrary.org/b/isbn/9780316160179-L.jpg'),
(23, 'Test Title', 'Test Author', 'Fiction', 2021, 4.50, 'http://example.com/image.jpg');

ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
