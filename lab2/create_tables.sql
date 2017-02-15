\c postgres;
drop database if exists imdb;
create database imdb;
\c imdb;

create table Movie(
	movie_id integer primary key,
	year integer,
	title varchar(50));

create table Actor(
	actor_id integer primary key,
	gender bool,
	first_name varchar(50),
	last_name varchar(50));

create table Genre(
	genre_id integer primary key,
	genre varchar(50));


create table Keyword(
	keyword_id integer primary key,
	keyword varchar(50));

create table Movie_Keyword(
	movie_id integer primary key references Movie(movie_id),
	keyword_id integer references Keyword(keyword_id));

create table Actor_Aka_Names(
	actor_id integer references Actor(actor_id),
	aka_id integer primary key,
	aka_name varchar(50));

create table Series(
	series_id integer primary key,
	number integer,
	season integer, 
	movie_id integer references Movie(movie_id),
	series_name varchar(50));

create table Genre_Movie(
	movie_id integer primary key references Movie(movie_id),
	genre_id integer references Genre(genre_id));

create table Aka_Movie(
	aka_title_id integer primary key,
	movie_id integer references Movie(movie_id),
	year integer,
	aka_movie_name varchar(50));

create table Casts(
	character_id integer primary key,
	actor_id integer references Actor(actor_id),
	movie_id integer references Movie(movie_id),
	series_id integer references Series(series_id),
	character varchar(50));
	


