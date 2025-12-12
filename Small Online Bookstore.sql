create database small_online_bookstore;
use small_online_bookstore;
create table books(book_id smallint, title varchar(50), price int, publication_date date, author_id smallint, author_name varchar(30)); 
create table authors(author_id smallint, author_name varchar(30), book_id smallint, book_name varchar(50));
create table orders(order_id smallint, book_id smallint, order_date date, quantity int, author_id smallint);

insert into books(book_id, title, price, publication_date, author_id, author_name) values
(1, 'To Kill a Mockingbird', 10, "2020-06-20", 101, 'Harper Lee'),
(2, '1984', 15, "2020-01-01", 102, 'George Orwell'),
(3, 'Book1', 25, "2020-03-15", 103, 'Harnit'),
(4, 'Harry Potter', 30, "2020-02-25", 104, 'J.K.Rowling'),
(5, 'Book2', 10, "2021-01-02", 105, 'Austen'),
(6, 'The Hobbit', 18, "2020-02-01", 106, 'J.R.R'),
(7, 'Animal Farm', 22, "2020-05-15", 107, 'George Orwell'),
(8, 'War and Peace', 25, "2020-01-05", 108, 'Leo Tolstoy'),
(9, 'Book5', 8, "2020-10-10", 109, 'Lewis'),
(10, 'The Girl on the Train', 24, "2020-12-09", 110, 'Paula Hawkins'),
(11, 'Book1', 12, "2019-08-18", 111, 'John'),
(12, 'The White Tiger', 28, "2020-01-25", 112, 'Aravind Adiga'),
(13, 'Five Point Someone', 21, "2020-04-20", 113, 'Chetan Bhagat'),
(14, 'Think and Grow Rich', 30, "2021-02-19", 114, 'Napolean Hill'),
(15, 'Rich Dad Poor Dad', 25, "2020-03-28", 115, ' Robert Kiyosaki'),
(16, 'Book9', 5, "2018-02-03", 116, 'Dale Mark'),
(17, 'Atomic Habits', 15, "2020-03-15", 117, 'James Clear'),
(18, 'Book6', 12, "2023-10-23", 118, 'Robert'),
(19, 'Book4', 15, "2020-08-10", 119, 'John Dale'),
(20, 'Book8', 20, "2020-06-25", 120, 'Manson');

insert into authors(author_id, author_name, book_id, book_name) values
(101, 'Harper Lee', 1, 'To Kill a Mockingbird'),
(102, 'George Orwell', 2, '1984'),
(103, 'Harnit', 3, 'Book1'),
(104, 'J.K.Rowling', 4, 'Harry Potter'),
(105, 'Austen', 5, 'Book2'),
(106, 'J.R.R', 6, 'The Hobbit'),
(107, 'George Orwell', 7, 'Animal Farm'),
(108, 'Leo Tolstoy', 8, 'War and Peace'),
(109, 'Lewis', 9, 'Book5'),
(110, 'Paula Hawkins', 10, 'The Girl on the Train'),
(111, 'John', 11, 'Book1'),
(112, 'Aravind Adiga', 12, 'The White Tiger'),
(113, 'Chetan Bhagat', 13, 'Five Point Someone'),
(114, 'Napolean Hill', 14, 'Think and Grow Rich'),
(115, ' Robert Kiyosaki', 15, 'Rich Dad Poor Dad'),
(116, 'Dale Mark', 16, 'Book9'),
(117, 'James Clear', 17, 'Atomic Habits'),
(118, 'Robert', 18, 'Book6'),
(119, 'John Dale', 19, 'Book4'),
(120, 'Manson', 20, 'Book8');

insert into orders(order_id, book_id, order_date, quantity, author_id) values
(1001, 1, "2020-03-01", 2, 101),
(1002, 2, "2020-10-01", 5, 102),
(1003, 5, "2020-01-10", 10, 105),
(1004, 3, "2019-10-12", 2, 103),
(1005, 4, "2020-03-10", 4, 104),
(1006, 10, "2019-12-10", 6, 110),
(1007, 9, "2020-05-10", 1, 109),
(1008, 8, "2020-02-15", 2, 108),
(1009, 7, "2020-01-26", 1, 107),
(1010, 6, "2020-03-02", 1, 106),
(1011, 11, "2020-12-05", 2, 111),
(1012, 12, "2020-04-30", 1, 112),
(1013, 15, "2020-06-12", 3, 115),
(1014, 13, "2019-12-03", 1, 113),
(1015, 14, "2019-08-18", 1, 114),
(1016, 16, "2020-01-01", 1, 116),
(1017, 18, "2020-02-10", 1, 118),
(1018, 17, "2020-02-18", 2, 117),
(1019, 19, "2020-05-05", 3, 119),
(1020, 20, "2020-01-16", 5, 120);

#2. Write a SELECT statement to retrieve all books from the Books table. 
select title 
from books;

#3. Write a SELECT statement to retrieve books with a price greater than 20
select title,price from books
where price > 20;

#4. Write a SELECT statement to retrieve books with a publication date between '2020-01-01' and '2020-06-30'.
select title,publication_date from books
where publication_date between '2020-01-01' and '2020-06-30';

#5. Write a SELECT statement to retrieve orders with a quantity greater than or equal to 2.
select order_id,quantity from orders 
where quantity >= 2; 

#6. Write an UPDATE statement to update the price of a book with a book_id of 1. 
update books
set price = 30
where book_id = 1;

#7. Write a DELETE statement to delete an order with an order_id of 5. 
delete from orders
where order_id = 1005;

#8. Write a SELECT statement to retrieve books with a price less than 15. 
select title,price from books 
where price < 15;

#9. Write a SELECT statement to retrieve orders with an order date greater than or equal to '2020-03-01'.
select order_id,order_date from orders
where order_date >= '2020-03-01';

#10. Write a SELECT statement to retrieve books with a title not equal to 'Book 1'
select title from books
where title != 'Book1';

#11. Write a SELECT statement to retrieve authors with an author_id less than or equal to 2.
 select author_id,author_name from authors
 where author_id <= 102;
 
 #12. Write a SELECT statement to retrieve books with a price between 10 and 20. 
 select title,price from books
 where price between 10 and 20;
 
 #13. Write a SELECT statement to retrieve orders with a quantity in (1, 2, 3). 
 select order_id,quantity from orders
 where quantity between 1 and 3;
 
 #14. Write a SELECT statement to retrieve books with a publication date like '%2020%'.
 
 
 #15. Write a SELECT statement to retrieve authors with an author_name starting with 'A'. 


#16. Write an INSERT statement to add a new book to the Books table. 
insert into books(book_id, title, price, publication_date, author_id, author_name) values
(21,'Book', 20, "2019-08-15", 121, 'John');

#17. Write an UPDATE statement to update the quantity of an order in the Orders table. 
update orders
set quantity = 15
where order_id = 1008;

#18. Write a DELETE statement to delete a book from the Books table. 
delete from books
where book_id = 21;

#19. Write a SQL query to retrieve the total number of books in the Books table. 
select count(book_id) from books;

#20. Write a SQL query to retrieve the average price of books in the Books table. 
select avg(price) from books; 

#21. Write a SQL query to retrieve the maximum quantity of orders in the Orders table. 
select max(quantity) from orders;

#22. Write a SQL query to retrieve the minimum publication date of books in the Books table.
select min(publication_date) from books;

#23. Write a GRANT statement to grant SELECT privilege to bookstore_user on the Orders table. 
create user 'bookstore_user@localhost' identified by 'root';

grant select on orders to 'bookstore_user@localhost';
grant all on orders to 'bookstore_user@localhost';

#24. Write a REVOKE statement to revoke INSERT privilege from bookstore_user on the Books table.
revoke all on orders from 'bookstore_user@localhost';
