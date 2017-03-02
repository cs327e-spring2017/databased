/* C:/Users/az-su/Documents/databased/lab3/queries.sql */

\c imdb

/*queries*/

select actor.first_name,actor.last_name, actor_aka_names.aka_name
from actor
inner join actor_aka_names
on actor.actor_id=actor_aka_names.actor_id
where actor.first_name = 'James';

select * from genre order by genre;

select genre.genre, count(movie.title)
from movie
inner join genre_movie
on movie.movie_id=genre_movie.movie_id
inner join genre
on genre_movie.genre_id=genre.genre_id
group by genre.genre
having count(movie.title) > 2500;

select count(*) from actor
where gender = 'M';

select count(genre) from genre;

select max(year) from movie;

select movie.title, aka_movie.aka_movie_name 
from movie
right outer join aka_movie
on movie.movie_id=aka_movie.movie_id
where movie.year > 2014;

select keyword.keyword, count(movie.title)
from movie
inner join movie_keyword
on movie.movie_id=movie_keyword.movie_id
inner join keyword
on movie_keyword.keyword_id=keyword.keyword_id
group by keyword.keyword
having count(movie.title) > 1000
order by count(movie.title);

select aka_movie.aka_movie_name
from aka_movie
where year >2016
order by year;

select movie.title
from movie
where movie.title='Interstellar';