/* C:/Users/az-su/Documents/databased/final-project/queries.sql */

select d_genres.name, count(d_artists.artist_id)
from d_genres
inner join d_releases_genres
on d_genres.genre_id=d_releases_genres.genre_id
inner join d_releases
on d_releases_genres.release_id=d_releases.release_id
inner join d_releases_artists
on d_releases.release_id=d_releases_artists.release_id
inner join d_artists
on d_releases_artists.artist_id=d_artists.artist_id
inner join mb_artist 
on d_artists.name=mb_artist.name
group by d_genres.name
order by count(d_artists.artist_id) Desc;


select mb_release_country.country, count(mb_artist.id)
from mb_release_country
inner join mb_release
on mb_release_country.country=mb_release.id
inner join mb_release_group
on mb_release.release_group=mb_release_group.id
inner join mb_artist_credit
on mb_release_group.artist_credit=mb_artist_credit.id
inner join mb_artist_credit_name
on mb_artist_credit.name=mb_artist_credit_name.artist_credit
inner join mb_artist
on mb_artist_credit_name.artist=mb_artist.id
inner join d_artists
on mb_artist.name=d_artists.name
group by mb_release_country.country
having count(mb_artist.name) > 1;

select year, count(d_releases.title)
from d_releases
inner join mb_release
on d_releases.title=mb_release.name
group by year
order by count(d_releases.release_id) desc

set search_path to unified;

select d_genres.name, count(d_artists.name) 
from d_genres 
inner join d_releases_genres 
on d_genres.genre_id = d_releases_genres.genre_id
inner join d_releases
on d_releases_genres.release_id = d_releases.release_id
inner join d_releases_artists
on d_releases.release_id = d_releases_artists.release_id
inner join d_artists
on d_releases_artists.artist_id = d_artists.artist_id
group by d_genres.name;

select mb_area.name, count(mb_artist.id)
from mb_area
inner join mb_country_area
on mb_area.id = mb_country_area.area
inner join mb_release_country
on mb_country_area.area = mb_release_country.country
inner join mb_release
on mb_release_country.release = mb_release.id
inner join mb_release_group
on mb_release.release_group = mb_release_group.id
inner join mb_artist_credit
on mb_release_group.artist_credit = mb_artist_credit.id
inner join mb_artist_credit_name
on mb_artist_credit.name = mb_artist_credit_name.artist_credit
inner join mb_artist
on mb_artist_credit_name.artist = mb_artist.id
group by mb_area.name
having count(mb_artist.id) > 5;


/*OLD QUERIES FOR EXAMPLES
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

*/