/* \i C:/Users/az-su/Documents/databased/final-project/checkMusicbrainzCharacters.sql */
set search_path to musicbrainz;

select name from artist order by random() limit 50;
select name from artist_credit order by random() limit 50;
select name from release order by random() limit 50;
select name from medium_format order by random() limit 50;


select max(get_utf8_bytes(name)) from musicbrainz.artist;
select max(get_utf8_bytes(name)) from musicbrainz.artist_credit;
select max(get_utf8_bytes(name)) from musicbrainz.release;
select max(get_utf8_bytes(name)) from musicbrainz.medium_format;

/*
311
1495
865
25
*/

alter table musicbrainz.artist add column cname varchar(311);
update musicbrainz.artist set cname = name;
alter table musicbrainz.artist_credit add column cname varchar(1495);
update musicbrainz.artist_credit set cname = name;
alter table musicbrainz.release add column cname varchar(865);
update musicbrainz.release set cname = name;
alter table musicbrainz.medium_format add column cname varchar(25);
update musicbrainz.medium_format set cname = name;