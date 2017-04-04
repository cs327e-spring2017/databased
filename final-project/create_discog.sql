/* C:/Users/az-su/Documents/databased/final-project/create_discog.sql */
drop schema if exists discog cascade;
create schema discog;
set search_path to discog;

create table Artists(
   tist_id integer,
   name varchar(10000),
   realname varchar(20000)
);
create table Genres(
   genre_id integer,
   name varchar(20000)
);
create table Labels(
   label_id integer,
   name varchar(10000)
);
create table Releases(
   release_id integer,
   title varchar(30000),
   num_tracks integer,
   released varchar(10000),
   country varchar(10000)
);
create table Releases_Artists(
   release_id integer,
   artist_id integer
);
create table Releases_Formats(
   release_id integer,
   format_type varchar(10000)
);
create table Releases_Genres(
   release_id integer,
   genre_id boolean
);
create table Releases_Labels(
   release_id integer,
   label_id integer
);
