drop schema if exists unified cascade;
create schema unified;
set search_path to unified;

/* tables needed - done
'genres', 
'releases_genres', 
'releases', 
'releases_artists', 
'artists', 
'artist', 
'release_country', 
'release', 
'release_group', 
'artist_credit', 
'artist_credit_name', 
'releases_formats', 
'medium_format', 
'medium', 
'gender', 
*/

create table unified.d_genres as select cname as name, genre_id from discog.genres;
create table unified.d_releases_genres as select release_id, genre_id from discog.releases_genres;
create table unified.d_releases as select release_id, ctitle as title, year from discog.releases;
create table unified.d_releases_artists as select artist_id, release_id from discog.releases_artists;
create table unified.d_artists as select tist_id as artist_id, cname as name from discog.artists;
create table unified.d_releases_formats as select release_id, format_type from discog.releases_formats;

create table unified.mb_release_group as select id, artist_Credit from musicbrainz.release_group;
create table unified.mb_artist_credit as select id, cname as name from musicbrainz.artist_credit;
create table unified.mb_artist_credit_name as select artist_credit, artist from musicbrainz.artist_credit_name;
create table unified.mb_artist as select id, gender, cname as name from musicbrainz.artist;
create table unified.mb_release as select id, cname as name, release_group from musicbrainz.release;
create table unified.mb_medium_format as select id, cname as name from musicbrainz.medium_format;
create table unified.mb_medium as select id, release from musicbrainz.medium;
create table unified.mb_release_country as select release, country from musicbrainz.release_country;
create table unified.mb_gender as select id, name from musicbrainz.gender;






