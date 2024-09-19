CREATE TABLE cats 
  ( 
     cat_id INT AUTO_INCREMENT, 
     name   VARCHAR(100), 
     breed  VARCHAR(100), 
     age    INT, 
     PRIMARY KEY (cat_id) 
  ); 
  INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
select name from people.cats;
/*selecting 2 or more columns from the table*/
select name, age from people.cats;
/*The WHERE clause is more specific*/
USE people;
SELECT * FROM cats WHERE age=4;/*we first of all go to the age column, to the rows that are equal to 4, then return all the columns where this is true*/
SELECT * FROM cats WHERE name='Egg';
select name, breed from people.cats;
select name, age from people.cats where breed = 'Tabby';
select * from people.cats where cat_id = age;
select cat_id, age from people.cats where cat_id = age;
/* Let's use aliases for better comprehension of our results*/
select cat_id as id, name from people.cats;
/*UPDATE: let's alter the existing data
Try to always SELECT before updating*/
update people.cats set breed = 'Shorthair' where breed = 'tabby';
update people.cats set age = 14 where name = 'misty';
/*change Jackson's name to Jack*/
update people.cats set name = 'Jack' where name = 'Jackson';
/* Change Ringo's breed to "British Shorthair"*/
update people.cats set breed = 'British Shorthair' where name = 'Ringo';
/* Update both Maine Coons' ages to be 12 */
update people.cats set age = 12 where breed = 'Maine Coon';
/* Delete
Time to learn to...delete things*/
delete from people.cats where name = 'egg';
/* DELETE all 4 year old cats*/ 
delete from people.cats where age = 4;
/*DELETE cats whose age is the same as their cat_id*/
delete from people.cats where age = cat_id;
/*DELETE all cats 🙀*/
delete from people.cats;/*This deletes all rows. To delete the table, you use: DROP TABLE <tablename>*/
