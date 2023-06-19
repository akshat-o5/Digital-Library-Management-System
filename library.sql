-- Creating a database named Library
create database Library;

-- Using the current database
use Library;

-- SET GLOBAL FOREIGN_KEY_CHECKS=0;


-- Creating table named books for storing book records in library
-- ASSUMPTION: publisher-id is unique for each book-- 
CREATE TABLE `books` (
	`book_id` INT NOT NULL,
	`book_name` VARCHAR(30),
	`book_domain` VARCHAR(30),
	`author` VARCHAR(20),
	`publisher_id` INT NOT NULL UNIQUE,
	PRIMARY KEY (`book_id`)
);

SELECT * FROM books;

-- Inserting values in table books
INSERT INTO books
	VALUES(1, 'A Room with a View', 'Story', 'E.M. Foster', 101),
	(2, 'A Passage to India', 'Classic', 'E.M. Foster', 102),
	(3, 'A Study in Scarlet', 'Fiction', 'Arthur Conan Doyle', 103),
	(4, 'Think and Grow Rich', 'Motivational', 'Napoleon Hill', 104),
	(5, 'The Valley of Fear', 'Fiction', 'Arthur Conan Doyle', 105),
	(6, 'Outwitting the Devil', 'Motivational', 'Napoleon Hill', 106),
	(7, 'The Return of Sherlock Holmes', 'Fantasy', 'Arthur Conan Doyle', 107),
	(8, 'The Law of Success', 'Motivational', 'Napoleon Hill', 108),
	(9, 'The Master Key to Riches', 'Fiction', 'Napoleon Hill', 109),
	(10, 'The Poison Belt', 'Fantasy', 'Arthur Conan Doyle', 110),
	(11, 'Cinta ABC', 'Fiction', 'Emma Maizura', 111),
	(12, 'How to Raise Your Own Salary', 'Motivational', 'Napoleon Hill', 112),
	(13, 'Dejavu Cinta', 'Fantasy', 'Emma Maizura', 113),
	(14, 'Adventures of Huckleberry Finn', 'Adventure', 'Mark Twain', 114),
	(15, 'The Adventures of Tom Sawyer', 'Story', 'Mark Twain', 115),
	(16, 'The Prince and the Pauper', 'Classic', 'Mark Twain', 116),
	(17, 'Mastering Mathematics One', 'Mathematics', 'M.L. Agarwal', 117),
	(18, 'Mastering Mathematics Two', 'Mathematics', 'M.L. Agarwal', 118),
	(19, 'Theory and Problems', 'Mathematics', 'R.D. Sharma', 119),
	(20,' Mathematics for Class 9', 'Mathematics', 'R.D. Sharma', 120)
;

-- Drop table books;

-- Retrieving values from table books
SELECT * FROM books;

-- Creating a view for values where book_domain = Story so that it is easy to retieve values
CREATE VIEW Story AS
SELECT *
FROM books
WHERE book_domain = 'Story';

Select * FROM Story;

-- Creating a view for values where book_domain = Classic so that it is easy to retieve values
CREATE VIEW Classic AS
SELECT *
FROM books
WHERE book_domain = 'Classic';

Select * FROM Classic;

-- Creating a view for values where book_domain = Fiction so that it is easy to retieve values
CREATE VIEW Fiction AS
SELECT *
FROM books
WHERE book_domain = 'Fiction';

Select * FROM Fiction;


-- We can create other viwes as per our requirements later in time.
-- Example, we can create views accoring to book_domain, book_author etc.

-- Creting table publisher for storing the records of publishers of books
CREATE TABLE `publisher` (
	`publisher_id` INT 	NOT NULL,
	`publisher_name` VARCHAR(20),
	`publisher_address` VARCHAR(20),
	PRIMARY KEY (`publisher_id`),
    FOREIGN KEY (`publisher_id`) REFERENCES books(`publisher_id`)
);

Drop table publisher;
 
SELECT * FROM publisher;

-- Inserting values in table publisher
INSERT INTO publisher
	VALUES(101, 'Pearson', 'London'),
	(102, 'Relx', 'London'),
	(103, 'Thomson Reuters', 'Toronto'),
	(104, 'Penguin Random House', 'New York City'),
	(105, 'Hachette Livre', 'Paris'),
	(106, 'HarperCollins', 'New York City'),
	(107, 'Macmillan Publishers', 'New York City'),
	(108, 'Bertelsmann', 'Germany'),
	(109, 'Scholastic Corp', 'New York City'),
	(110, 'McGraw-Hill Edu', 'New York City'),
	(111, 'Springer Nature', 'Germany'),
	(112, 'John Wiley & Sons', 'New York City'),
	(113, 'Marvel Comics', 'New York City'),
	(114, 'DC Comics', 'New York City'),
	(115, 'Dark Horse Comics', 'London'),
	(116, 'Image Comics', 'London'),
	(117, 'IDW Publishing', 'London'),
	(118, 'Cengage', 'Boston'),
	(119, 'Oxford', 'New York City'),
	(120, 'Shueisha', 'Japan')
;

-- Retrieving values from table publisher
SELECT * FROM publisher;

-- Creating table names library_users for library_users registering their account
CREATE TABLE `library_user` (
	`u_id` INT NOT NULL,
	`fname` VARCHAR(50),
	`lname` VARCHAR(50),
	`sex` VARCHAR(50),
	`city` VARCHAR(50),
	`occupation` VARCHAR(50),
	`DOB` DATE,
    `join_date` DATE,
	PRIMARY KEY (`u_id`)
);

SELECT * FROM library_user;

drop table library_user;

insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (001, 'Rubia', 'Gaishson', 'Female', 'Ventsy', 'Research and Development', '2001-12-30', '2018-08-16');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (002, 'Sidnee', 'Millgate', 'Male', 'Siparia', 'Business Development', '1995-05-26', '2019-10-21');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (003, 'Cornelle', 'Cursons', 'Female', 'Paraíso', 'Sales', '2003-04-04', '2015-10-27');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (004, 'Daisy', 'Starten', 'Female', 'Obodivka', 'Services', '2001-02-11', '2021-07-21');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (005, 'Koressa', 'Webb', 'Female', 'Lengkongsari', 'Sales', '1994-09-18', '2021-11-04');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (006, 'Decca', 'Charley', 'Male', 'Pszczew', 'Engineering', '1993-01-17', '2016-08-28');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (007, 'Rafaello', 'Beeken', 'Male', 'Toulouse', 'Engineering', '1989-08-29', '2018-01-29');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (008, 'Eleanora', 'Tumulty', 'Female', 'Timoulilt', 'Training', '1996-08-25', '2020-01-28');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (009, 'Tiphani', 'Kingsford', 'Female', 'Qīrah', 'Sales', '1990-04-21', '2017-04-25');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (010, 'Carney', 'Tonsley', 'Male', 'Červené Pečky', 'Research and Development', '1993-09-10', '2017-06-06');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (011, 'Benyamin', 'MacAlroy', 'Male', 'Markog', 'Legal', '1999-12-30', '2019-02-09');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (012, 'Ailey', 'Schettini', 'Female', 'Ar Rudayyif', 'Marketing', '1991-11-20', '2018-07-04');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (013, 'Thomas', 'Dalziell', 'Male', 'Alcalá', 'Sales', '1993-06-27', '2020-04-05');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (014, 'Ezechiel', 'Iwanowski', 'Male', 'Vaudreuil-Dorion', 'Research and Development', '1989-07-01', '2021-04-24');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (015, 'Mildred', 'Venes', 'Female', 'Dalongdong', 'Sales', '2003-02-14', '2019-01-14');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (016, 'Saba', 'Chatain', 'Female', 'Umanggudang', 'Services', '2002-03-15', '2018-01-10');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (017, 'Eulalie', 'McClenan', 'Female', 'Beja', 'Training', '1991-02-02', '2017-01-01');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (018, 'Ricardo', 'Cannings', 'Male', 'Jiaxian Chengguanzhen', 'Services', '2005-02-05', '2019-05-08');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (019, 'Torry', 'Knok', 'Male', 'Surgut', 'Support', '1990-03-24', '2016-10-27');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (020, 'Nananne', 'Witcombe', 'Female', 'Rongai', 'Legal', '1990-06-04', '2019-06-27');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (021, 'Emmett', 'Patesel', 'Male', 'Sydney', 'Support', '2002-05-31', '2016-03-24');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (022, 'Obediah', 'McKleod', 'Male', 'Jianling', 'Engineering', '1995-11-07', '2019-11-15');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (023, 'Bennett', 'Bigmore', 'Male', 'North Saanich', 'Legal', '2001-02-02', '2017-08-26');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (024, 'Evangelia', 'Carville', 'Female', 'Köyliö', 'Services', '1994-12-01', '2021-09-04');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (025, 'Wyatt', 'Coventry', 'Male', 'Vykhino-Zhulebino', 'Human Resources', '1990-12-05', '2016-03-05');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (026, 'Corey', 'Pebworth', 'Female', 'Santiago', 'Business Development', '2002-08-25', '2022-11-08');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (027, 'Karyl', 'Stronach', 'Female', 'San Jose', 'Services', '1998-04-24', '2023-04-06');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (028, 'Valentia', 'Dalman', 'Female', 'Avaré', 'Training', '2005-05-22', '2022-05-23');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (029, 'Virgilio', 'Golby', 'Male', 'Kvänum', 'Marketing', '1999-06-02', '2018-03-11');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (030, 'Terese', 'Mc Giffin', 'Female', 'Hässleholm', 'Business Development', '2001-02-16', '2020-01-16');
insert into library_user (u_id, fname, lname, sex, city, occupation, DOB, join_date) values (031, 'Arlen', 'Erangey', 'Female', 'Lyasny', 'Support', '2002-10-18', '2019-08-20');

-- Retrieving values from table library_user
SELECT * FROM library_user;

-- Creating a view for values where sex = Male so that it is easy to retieve values
CREATE VIEW Male AS
SELECT *
FROM library_user
WHERE sex = 'Male';

-- Drop view Male;

SELECT * FROM Male;

-- Creating a view for values where sex = Female so that it is easy to retieve values
CREATE VIEW Female AS
SELECT *
FROM library_user
WHERE sex = 'Female';

-- Drop View Female;

SELECT * FROM Female;

-- We can create other viwes as per our requirements later in time.
-- Example, we can create views accoring to occupation, join_date etc.

-- Creating table named active_library_users for storing records of all library_users who are currently issuing a book.
-- ASSUMPTION: One library_user can issue only one book at a time. library_users are not allowed to issue multiple books at same time. One must return the book inorder to issue a new one.
CREATE TABLE `active_library_user` (
	`u_id` INT NOT NULL,
	`book_id` INT NOT NULL,
	`Issued_date` DATE NOT NULL,
	`return_date` DATE NOT NULL,
	PRIMARY KEY (`u_id`),
    FOREIGN KEY (`u_id`) REFERENCES library_user(`u_id`),
    FOREIGN KEY (`book_id`) REFERENCES books(`book_id`)
);

-- drop table active_library_user;

-- Inserting values into table active_library_user
INSERT INTO active_library_user 
	VALUES (002, 13, '2021-06-05', '2021-06-12'),
    (004, 17, '2022-05-05', '2022-05-12'),
    (001, 11, '2023-01-01', '2023-01-07'),
    (005, 10, '2021-05-05', '2021-05-12'),
    (008, 3, '2020-06-21', '2021-06-27'),
    (020, 15, '2021-05-11', '2021-05-17'),
    (031, 3, '2021-03-07', '2021-03-14'),
    (029, 4, '2022-01-14', '2022-01-21')
;

-- Retrieving values from table active_library_user
SELECT * FROM active_library_user;

-- Creating a table name confi_data to store all the confidential data of the library users which is not accessible to everyone except the databse administrator. 
create table confi_data (
	u_id INT,
	mobile_no VARCHAR(50),
	email VARCHAR(50),
	Password VARCHAR(50),
    PRIMARY KEY (`u_id`),
    FOREIGN KEY (`u_id`) REFERENCES library_user(`u_id`)
);

-- Inserting values into confi_data table
insert into confi_data (u_id, mobile_no, email, Password) values (001, '422-530-6507', 'eormonde0@gizmodo.com', 'rQ3)#I8''kKZY##B');
insert into confi_data (u_id, mobile_no, email, Password) values (002, '535-746-6470', 'mcruces1@deviantart.com', 'iU8<Sk<4');
insert into confi_data (u_id, mobile_no, email, Password) values (003, '251-368-2682', 'lsallenger2@epa.gov', 'yV1_B=VH7p0|qgY');
insert into confi_data (u_id, mobile_no, email, Password) values (004, '311-590-6578', 'tpitone3@bbb.org', 'vQ9\R16N)+.xA)');
insert into confi_data (u_id, mobile_no, email, Password) values (005, '340-738-3531', 'smatyas4@marriott.com', 'zI8/&JtQ"yqF+lGn');
insert into confi_data (u_id, mobile_no, email, Password) values (006, '119-608-6359', 'gpattullo5@nbcnews.com', 'uD1<v/6}');
insert into confi_data (u_id, mobile_no, email, Password) values (007, '419-502-7970', 'nstoade6@tuttocitta.it', 'lY3`l*=0');
insert into confi_data (u_id, mobile_no, email, Password) values (008, '459-603-1512', 'dfildes7@clickbank.net', 'iJ2\pEjAS?H$}DB');
insert into confi_data (u_id, mobile_no, email, Password) values (009, '350-921-9446', 'fpilgram8@home.pl', 'zW4@nF%oL');
insert into confi_data (u_id, mobile_no, email, Password) values (010, '305-594-0777', 'afeander9@disqus.com', 'sB0+CKE=AZ9M>PS');
insert into confi_data (u_id, mobile_no, email, Password) values (011, '452-615-7144', 'cedgea@vistaprint.com', 'gQ8=+5hp*E');
insert into confi_data (u_id, mobile_no, email, Password) values (012, '567-110-4100', 'jwindrassb@apple.com', 'pW8/{SnUBdo');
insert into confi_data (u_id, mobile_no, email, Password) values (013, '129-109-4421', 'rmelvillec@bloomberg.com', 'hX6`V/UKuD3jQ/');
insert into confi_data (u_id, mobile_no, email, Password) values (014, '299-277-9013', 'fmerrisond@google.co.jp', 'qH5#t!$Kpd');
insert into confi_data (u_id, mobile_no, email, Password) values (015, '721-804-8252', 'ewhebelle@yellowbook.com', 'vO7.NW3(');
insert into confi_data (u_id, mobile_no, email, Password) values (016, '239-282-1574', 'emonteathf@si.edu', 'tO1.<m&1P/');
insert into confi_data (u_id, mobile_no, email, Password) values (017, '165-529-4117', 'zoldknoweg@ca.gov', 'gH0.?z{X*"C4L');
insert into confi_data (u_id, mobile_no, email, Password) values (018, '502-490-3167', 'ltwiggeh@dyndns.org', 'oL4/C+S.4R@');
insert into confi_data (u_id, mobile_no, email, Password) values (019, '535-799-3687', 'amcnutti@icq.com', 'kV5{zr4QZ.iN"');
insert into confi_data (u_id, mobile_no, email, Password) values (020, '694-246-3933', 'sbladerj@youtube.com', 'yR5,.OehLO');
insert into confi_data (u_id, mobile_no, email, Password) values (021, '674-837-0003', 'hferierk@sun.com', 'yK1<''z2hd$kD7');
insert into confi_data (u_id, mobile_no, email, Password) values (022, '980-895-2085', 'tmcclarencel@jigsy.com', 'vB2>repzT7Jyu/#');
insert into confi_data (u_id, mobile_no, email, Password) values (023, '504-544-3778', 'atownsm@rediff.com', 'eC3?Wwtw04cKxT');
insert into confi_data (u_id, mobile_no, email, Password) values (024, '908-785-5896', 'vlongfieldn@nydailynews.com', 'iC1<H=G4A~Ro');
insert into confi_data (u_id, mobile_no, email, Password) values (025, '630-508-0298', 'mkastelo@nba.com', 'mG9&S`R}d');
insert into confi_data (u_id, mobile_no, email, Password) values (026, '587-355-6222', 'achapelhowp@dmoz.org', 'lF0)|Tj581v6aP''i');
insert into confi_data (u_id, mobile_no, email, Password) values (027, '543-774-7661', 'aladbrookeq@prlog.org', 'xN6|eI}uLBi\bV+m');
insert into confi_data (u_id, mobile_no, email, Password) values (028, '251-308-2684', 'afairfootr@domainmarket.com', 'vD7`SNrRG');
insert into confi_data (u_id, mobile_no, email, Password) values (029, '813-732-8172', 'msomerss@pbs.org', 'pZ0!(u}&I9A/');
insert into confi_data (u_id, mobile_no, email, Password) values (030, '135-711-6056', 'adugallt@pbs.org', 'lD8|bN6R');
insert into confi_data (u_id, mobile_no, email, Password) values (031, '264-513-5421', 'ehairyesu@quantcast.com', 'lA1=F@El<$/tP&');

-- Retrieving values from table named confi_data
Select * from confi_data;