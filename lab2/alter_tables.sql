/* C:/Users/az-su/Documents/databased/lab2/alter_tables.sql */
\c imdb

/* check suspected empties */
select count(distinct m_name) from actor;
select count(distinct location) from movie;
select count(distinct language) from movie;
select count(distinct series_id) from genre_movie;
select count(distinct series_id) from movie_keyword;



/*delete empties */
alter table movie drop column location;
alter table movie drop column language;
alter table genre_movie drop column series_id;
alter table movie_keyword drop series_id;

/* delete unneeded*/
alter table actor drop column m_name;
alter table movie drop type;
alter table movie drop number;
alter table actor drop number;
alter table aka_movie drop location;
alter table casts drop billing_position;

/*change type 
alter table actor alter gender type char(1); */