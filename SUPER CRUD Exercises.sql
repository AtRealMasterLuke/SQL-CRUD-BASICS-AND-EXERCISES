/* Create a new database shirts_db*/
create database shirts_db;
/* Create a new table shirts*/
USE shirts_db;
CREATE TABLE shirts
  (
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(100),
    color VARCHAR(100),
    shirt_size VARCHAR(100),
    last_worn INT,
    PRIMARY KEY(shirt_id)
  );

insert into shirts (article, color, shirt_size, last_worn)
values('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
select * from shirts_db.shirts;
/*Add A New Shirt
Purple polo shirt, size M last worn 50 days ago*/
insert INTO shirts (color, article, shirt_size, last_worn)
values('purple', 'polo shirt', 'M', 50);
/*SELECT all shirts
But Only Print Out Article and Color*/
select article, color from shirts_db.shirts;
/*SELECT all medium shirts
Print Out Everything But shirt_id*/
select article, color, shirt_size, last_worn from shirts_db.shirts where shirt_size = 'M';
/*Update all polo shirts
Change their size to L*/
update shirts_db.shirts set shirt_size = 'L' where article = 'polo shirt';
/*Update the shirt last worn 15 days ago
Change last_worn to 0*/
update shirts_db.shirts set last_worn = 0 where last_worn = 15;
/* Update all white shirts
Change size to 'XS' and color to 'off white'*/
update shirts_db.shirts set shirt_size = 'XS', color = 'off white' where color = 'white';
/* Delete all old shirts
Last worn 200 days ago*/
delete from shirts_db.shirts where last_worn = 200;
/* Delete all tank tops
Your tastes have changed...*/
delete from shirts_db.shirts where article = 'tank top';
/* Delete all shirts
Catastrophe!*/
delete from shirts_db.shirts;
/*Drop the entire shirts table
Catastrophe Again!*/
drop table shirts;