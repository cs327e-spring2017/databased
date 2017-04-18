/* \i C:/Users/az-su/Documents/databased/final-project/create_views.sql */

set search_path to unified;

--Time: 1576ms
/* 1: Which genre has the most artists? */
create or replace view v_most_artists as 
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

--Time: 1972ms
/*2: Which countries have more than 5 artists? */
create or replace view v_artists_countries as 
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

--Time: 2735ms
/*3. Which year had the most releases?*/
create or replace view v_most_releases as 
select d_releases.year, count(mb_release.name)
from mb_release
inner join d_releases
on mb_release.name=d_releases.title
group by d_releases.year 
having count(mb_release.name) > 800000
limit 150;

--Time: 730ms
/*4. What is Nepal's most released genre?*/
create or replace view v_releases_nepal as 
select d_genres.name, count(mb_release.id)
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
where mb_area.name = 'Nepal'
group by d_genres.name
order by count(mb_release.id) desc;

--Time: 1466ms
/*5. What are newest releases in the United Kingdom?*/
create or replace view v_newest_releases_uk as 
select d_releases.title, d_releases.year
from d_releases
inner join mb_release
on d_releases.title=mb_release.name
inner join mb_release_country
on mb_release.id=mb_release_country.release
inner join mb_country_area
on mb_release_country.country = mb_country_area.area
inner join mb_area
on mb_country_area.area = mb_area.id
where mb_area.name = 'United Kingdom' and d_releases.year != 'None'
order by d_releases.year desc
limit 150;

--Time: 
/*6. Which gender is most common?*/
create or replace view v_common_genders as 
select mb_gender.name, count(mb_artist.id)
from mb_gender
inner join mb_artist
on mb_gender.id = mb_artist.gender
group by mb_gender.name
order by count(mb_artist.id) desc;

--Time: 224 ms
/*7. What is the most common name of artists? */
create or replace view v_common_names as 
select mb_artist.name as mb_name, count(mb_artist.name) as mb_count
from mb_artist
full outer join d_artists 
on mb_artist.name = d_artists.name 
group by mb_artist.name, d_artists.name
order by count(mb_artist.name) desc
limit 150;

--Time: 2161ms
/*8. Which genres have the most releases?*/
create or replace view v_genres_releases as 
select d_genres.name, count(d_releases.title) 
from d_genres 
inner join d_releases_genres 
on d_genres.genre_id = d_releases_genres.genre_id
inner join d_releases
on d_releases_genres.release_id = d_releases.release_id
group by d_genres.name
order by count(d_releases.title) desc;

--Time: 1597ms
/*9. Which gender has the most classical songs?*/
create or replace view v_gender_classical as 
select mb_gender.name, count(d_releases.title)
from mb_gender
inner join mb_artist
on mb_gender.id = mb_artist.gender
inner join mb_artist_credit_name
on mb_artist.id = mb_artist_credit_name.artist
inner join mb_artist_credit
on mb_artist_credit_name.artist_credit = mb_artist_credit.id
inner join mb_release_group
on mb_artist_credit.id = mb_release_group.artist_credit
inner join mb_release
on mb_release_group.id = mb_release.release_group
inner join d_releases
on mb_release.name = d_releases.title
inner join d_releases_genres
on d_releases.release_id = d_releases_genres.release_id
inner join d_genres
on d_releases_genres.genre_id = d_genres.genre_id
where d_genres.name = 'Classical'
group by mb_gender.name;

--Time: 1228ms
/*10. Which areas have releases in the hip-hop genre? */
create or replace view v_releases_hip_hop as 
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
where d_genres.name = 'Hip Hop'
group by mb_area.name;

\timing
\pset pager

select * from v_most_artists;

select * from v_artists_countries;

select * from v_most_releases;

select * from v_releases_nepal;

select * from v_newest_releases_uk;

select * from v_common_genders;

select * from v_common_names;

select * from v_gender_classical;

select * from v_releases_hip_hop;