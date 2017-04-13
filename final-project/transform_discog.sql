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

/*DATE*/
/*discog/releases.released */
select day, month, year, released from discog.releases order by random() limit 25;

alter table discog.Releases add column year char(4);
update discog.Releases set year = btrim(split_part(released, '/' ,3));
update discog.Releases set year = btrim(split_part(released, '-' , 1))
where length(btrim(split_part(released, '-' , 1))) = 4 and year = '';

alter table discog.Releases add column month char(10);
update discog.Releases set month = btrim(split_part(released, '-' ,2));
update discog.Releases set month = btrim(split_part(released, '/' ,1))
where length(btrim(split_part(released, '/' , 1))) < 3 and month = '';

alter table discog.Releases add column day char(10);
update discog.Releases set day = btrim(split_part(released, '-' ,3));
update discog.Releases set day = btrim(split_part(released, '/' ,2))
where length(btrim(split_part(released, '/' , 2))) < 3 and day = '';

/* Dropping day and month since most of the data is year only */
alter table discog.releases drop column day;
alter table discog.releases drop column month;


select name, cname from discog.genres order by random() limit 25;
select title, ctitle from discog.releases order by random() limit 25;


update discog.genres set name = cname;

update discog.artists set name = cname;

update discog.releases set title = ctitle;
