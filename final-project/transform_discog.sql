/* \i C:/Users/az-su/Documents/databased/final-project/checkDiscogCharacters.sql */

set search_path to discog;
select name from genres order by random() limit 50;
select name from artists order by random() limit 50;
select title from releases order by random() limit 50;

/*GETS MAX LENGTH*/
select max(get_utf8_bytes(name)) from discog.genres;
select max(get_utf8_bytes(name)) from discog.artists;
select max(get_utf8_bytes(title)) from discog.releases;

/*
Lengths:
20
149
290
*/

/*CREATE TEMP COLS*/
alter table discog.genres add column cname varchar(20);
update discog.genres set cname = name;
alter table discog.artists add column cname varchar(149);
update discog.artists set cname = name;
alter table discog.releases add column ctitle varchar(290);
update discog.releases set ctitle = title;

/* DELETES PUNCUATION */

update discog.genres set cname = initcap(btrim(split_part(cname,
';' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'/' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'(' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'[' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
':' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'-' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'...' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'with' , 1)));
update discog.genres set cname = initcap(btrim(split_part(cname,
'Vs.' , 1)));

update discog.artists set cname = initcap(btrim(split_part(cname,
';' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'/' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'(' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'[' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
':' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'-' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'...' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'with' , 1)));
update discog.artists set cname = initcap(btrim(split_part(cname,
'Vs.' , 1)));

update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
';' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'/' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'(' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'[' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
':' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'-' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'...' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'with' , 1)));
update discog.releases set ctitle = initcap(btrim(split_part(ctitle,
'Vs.' , 1)));
