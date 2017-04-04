/* C:/Users/az-su/Documents/databased/final-project/create_musicbrainz.sql */
drop schema if exists musicbrainz cascade;
create schema musicbrainz;
set search_path to musicbrainz;

create table Artist(
   id integer,
   gid varchar(400),
   name varchar(500),
   sort_name varchar(500),
   begin_date_year varchar(500),
   begin_date_month varchar(500),
   begin_date_day varchar(500),
   end_date_year varchar(500),
   end_date_month varchar(500),
   end_date_day varchar(500),
   type integer,
   area varchar(500),
   gender varchar(500),
   comment varchar(5000),
   edits_pending boolean,
   last_updated varchar(500),
   ended varchar(500),
   begin_area varchar(500),
   end_area varchar(500)
);
create table Artist_Alias(
   id integer,
   artist integer,
   name varchar(500),
   locale varchar(500),
   edits_pending boolean,
   last_updated varchar(500),
   type integer,
   sort_name varchar(500),
   begin_date_year varchar(500),
   begin_date_month varchar(500),
   begin_date_day varchar(500),
   end_date_year varchar(500),
   end_date_month varchar(500),
   end_date_day varchar(500),
   primary_for_locale varchar(500),
   ended varchar(500)
);
create table Artist_Alias_Type(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order boolean,
   description varchar(5000),
   gid varchar(400)
);
create table Artist_Credit_Name(
   artist_credit integer,
   position integer,
   artist integer,
   name varchar(500),
   join_phrase varchar(5000)
);
create table Artist_Credit(
   id integer,
   name varchar(500),
   artist_count integer
   ref_count integer,
   created varchar(500)
);
create table Track(
   id integer,
   gid varchar(400),
   recording integer,
   medium integer,
   position integer,
   number integer,
   name varchar(500),
   artist_credit integer,
   length integer,
   edits_pending boolean,
   last_updated varchar(500),
   is_data_track varchar(500)
);
create table Medium(
   id integer,
   release integer,
   position integer,
   format integer,
   name varchar(500),
   edits_pending boolean,
   last_updated varchar(500),
   track_count integer
);
create table Recording(
   id integer,
   gid varchar(400),
   name varchar(400),
   artist_credit integer,
   length integer,
   comment varchar(5000),
   edits_pending boolean,
   last_updated varchar(500),
   video varchar(500)
);
create table Medium_Format(
   id integer,
   name varchar(500),
   parent integer,
   child_order integer,
   year integer,
   has_discids varchar(500),
   description varchar(5000),
   gid varchar(400)
);
create table Release(
   id integer,
   gid varchar(400),
   name varchar(500),
   artist_credit integer,
   release_group integer,
   status integer,
   packaging integer,
   language integer,
   script integer,
   barcode integer,
   comment varchar(5000),
   edits_pending boolean,
   quality varchar(500),
   last_updated varchar(500)
);
create table Release_Group(
   id integer,
   gid varchar(400),
   name varchar(30),
   artist_credit integer,
   type varchar(500),
   comment varchar(5000),
   edits_pending boolean,
   last_updated varchar(500)
);
create table Release_Group_Secondary_Type_Join(
   release_group integer,
   secondary_type integer,
   created varchar(300)
);
create table Release_Group_Secondary_Type(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order integer,
   description varchar(500),
   gid varchar(400)
);
create table Release_Group_Primary_Type(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order integer,
   description varchar(500),
   gid varchar(400)
);
create table Release_Country(
   release integer,
   country integer,
   date_year integer,
   date_month integer,
   date_day integer
);
create table Country_Area(
   are integer
);
create table Area(
   id integer,
   gid varchar(400),
   name varchar(500),
   type integer,
   edits_pending boolean,
   last_updated varchar(500)
   begin_date_year varchar(500),
   begin_date_month varchar(500),
   begin_date_day varchar(500),
   end_date_year varchar(500),
   end_date_month varchar(500),
   end_date_day varchar(500),
   ended varchar(500),
   comment varchar(5000)
);
create table Area_Type(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order integer,
   description varchar(5000,)
   gid varchar(400)
);
create table Area_Alias_Type(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order integer,
   description varchar(500),
   gid varchar(400)
);
create table Area_Alias(
   id integer,
   area integer,
   name varchar(500),
   locale varchar(500),
   edits_pending boolean,
   last_updated varchar(500),
   type varchar(500),
   sort_name varchar(500),
   begin_date_year varchar(500),
   begin_date_month varchar(500),
   begin_date_day varchar(500),
   end_date_year varchar(500),
   end_date_month varchar(500),
   end_date_day varchar(500),
   primary_for_locale varchar(500),
   ended varchar(500)
);
create table Place(
   id integer,
   gid varchar(400),
   name varchar(500),
   type integer,
   address varchar(5000),
   area integer,
   coordinates varchar(500),
   comment varchar(5000),
   edits_pending boolean,
   last_updated varchar(500),
   begin_date_year varchar(500),
   begin_date_month varchar(500),
   begin_date_day varchar(500),
   end_date_year varchar(500),
   end_date_month varchar(500),
   end_date_day varchar(500),
   ended varchar(500)
);
create table Place_Type(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order integer,
   description varchar(5000),
   gid varchar(400)
);
create table Gender(
   id integer,
   name varchar(500),
   parent varchar(500),
   child_order integer,
   description varchar(5000),
   gid varchar(400)
);
