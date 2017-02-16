\c postgres;
drop database if exists imdb;
create database imdb;
\c imdb;

create table Movie(
	movie_id integer primary key,
	title varchar(1000),
	year integer,
	number integer,
	type integer,
	location varchar(100),
	language varchar(100));

create table Actor(
	actor_id integer primary key,
	first_name varchar(150),
	last_name varchar(150),
	m_name varchar(150),
	gender bool,
	number integer);

create table Genre(
	genre_id integer primary key,
	genre varchar(50));

create table Keyword(
	keyword_id integer primary key,
	keyword varchar(50));

create table Actor_Aka_Names(
	aka_id integer primary key,
	actor_id integer references Actor(actor_id),
	aka_name varchar(1000));

create table Series(
	series_id integer primary key,
	movie_id integer references Movie(movie_id),
	series_name varchar(1000),
	season integer, 
	number integer);

create table Aka_Movie(
	aka_title_id integer primary key,
	movie_id integer references Movie(movie_id),
	aka_movie_name varchar(1000),
	location varchar(50),
	year integer);

create table Casts(
	character_id integer primary key,
	movie_id integer references Movie(movie_id),
	series_id integer references Series(series_id),
	actor_id integer references Actor(actor_id),
	character varchar(1000),
	billing_position integer);
	
create table Movie_Keyword(
	movie_keyword_id integer primary key,
	movie_id integer references Movie(movie_id),
	keyword_id integer references Keyword(keyword_id),
	series_id integer references Series(series_id));

create table Genre_Movie(
	movie_genre_id integer primary key,
	movie_id integer references Movie(movie_id),
	genre_id integer references Genre(genre_id),
	series_id integer references Series(series_id));