/* C:/Users/az-su/Documents/databased/lab3/queries.sql */

\c imdb

/*queries*/

select actor.first_name,actor.last_name, actor_aka_names.aka_name
from actor
inner join actor_aka_names
on actor.actor_id=actor_aka_names.actor_id
where actor.first_name = 'James';

select * from genre;

select movie.title, genre.genre
from movie
inner join genre_movie
on movie.movie_id=genre_movie.movie_id
inner join genre
on genre_movie.genre_id=genre.genre_id
where genre.genre='War';

select count(*) from actor
group by gender
having gender = 'M';

select count(genre) from genre;

select max(year) from movie;

select movie.title, aka_movie.aka_movie_name 
from movie
right outer join aka_movie
on movie.movie_id=aka_movie.movie_id
where movie.year > 2014;

