/* C:/Users/az-su/Documents/databased/final-project/queries.sql */

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
group by d_genres.name
order by count(d_artists.name) desc;

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


select d_releases.year, count(mb_release.name)
from mb_release
inner join d_releases
on mb_release.name=d_releases.title
group by d_releases.year 
having count(mb_release.name) > 800000;

select d_releases_formats.format_type, count(d_releases_formats.format_type)
from d_releases_formats
inner join d_releases
on d_releases_formats.release_id=d_releases.release_id
inner join mb_medium_format
on d_releases_formats.format_type=mb_medium_format.name
inner join mb_medium 
on mb_medium_format.id=mb_medium.format
inner join mb_release
on mb_medium.release=mb_release.id
group by d_releases_formats.format_type;


--select d_releases.title, min(d_releases.year)
--from d_releases
--inner join mb_release
--on d_releases.title=mb_release.name
--inner join mb_release_country
--on mb_release.id=mb_release_country.release
--where mb_release = 'United Kingdom'
--group by d_releases.title;


--Q6



select mb_artist.name, count(mb_artist.name)
from mb_artist
inner join d_artists
on mb_artist.name=d_artists.name
group by mb_artist.name
having count(mb_artist.name) > 10;


select d_genres.name
from d_genres
inner join d_releases_genres
on d_genres.genre_id=d_releases_genres.genre_id
inner join d_releases
on d_releases_genres.release_id=d_releases.release_id
inner join mb_release
on d_releases.title=mb_release.name
group by d_genres.name
having length(d_releases.title) > 30;


--Q9



select mb_area.name
from mb_area
inner join mb_country_area
on mb_area.id = mb_country_area.area
inner join mb_release_country
on mb_country_area.area = mb_release_country.country
inner join mb_release
on mb_release_country.release = mb_release.id
inner join d_releases 
on mb_release.name=d_releases.title
inner join d_releases_genres
on d_releases.release_id=d_releases_genres.release_id
inner join d_genres
on d_releases_genres.genre_id=d_genres.genre_id
where genre = 'hip-hop'
group by mb_area.name


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