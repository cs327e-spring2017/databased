/* C:/Users/az-su/Documents/databased/lab3/indexes.sql */

\c imdb

/*indexes*/

create index actor_name_index on actor (first_name);

create index actor_gender_index on actor (first_name);

create index movie_year_index on movie (year);

create index aka_movie_name_index on aka_movie (year);

create index movie_title_index on movie (title);
