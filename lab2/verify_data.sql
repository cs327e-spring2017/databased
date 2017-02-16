\c imdb
select last_name from actor where actor_id = 123;
select year from movie where movie_id = 123;
\d series
select series_name from series where series_id = 9001;
select movie_id from casts where series_id = 4;
select genre from genre where genre_id < 10;
select aka_name from actor_aka_names where aka_id = 9999;
select keyword from keyword where keyword_id = 100;

