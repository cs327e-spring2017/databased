/* C:/Users/az-su/Documents/databased/final-project/create_musicbrainz.sql */
drop schema if exists musicbrainz cascade;
create schema musicbrainz;
set search_path to musicbrainz;

create table Artist(
   id integer,
   gid varchar(40),
   name varchar(20),
   sort_name varchar(20),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   type integer,
   area varchar(10),
   gender varchar(10),
   comment varchar(100),
   edits_pending boolean,
   last_updated varchar(10),
   ended varchar(10),
   begin_area varchar(10),
   end_area varchar(10)
);
create table Artist_Alias(
   id integer,
   artist integer,
   name varchar(20),
   locale varchar(10),
   edits_pending boolean,
   last_updated decimal(29,3),
   type varchar(10),
   sort_name varchar(20),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   primary_for_locale varchar(10),
   ended varchar(10)
);
create table Artist_Alias_Type(
   id integer,
   name varchar(20),
   parent varchar(10),
   child_order boolean,
   description varchar(10),
   gid varchar(40)
);
create table Artist_Credit_Name(
   artist_credit integer,
   position boolean,
   artist integer,
   name varchar(10),
   join_phrase varchar(100)
);
create table Artist_Credit(
   id integer,
   name varchar(20),
   artist_count boolean,
   ref_count integer,
   created decimal(29,3)
);
create table Track(
   id integer,
   gid varchar(40),
   recording integer,
   medium integer,
   position boolean,
   number boolean,
   name varchar(10),
   artist_credit integer,
   length integer,
   edits_pending boolean,
   last_updated decimal(29,3),
   is_data_track varchar(10)
);
create table Medium(
   id integer,
   release integer,
   position boolean,
   format boolean,
   name decimal(32,0),
   edits_pending boolean,
   last_updated decimal(29,3),
   track_count integer
);
create table Recording(
   id integer,
   gid varchar(40),
   name varchar(40),
   artist_credit integer,
   length integer,
   comment varchar(100),
   edits_pending boolean,
   last_updated varchar(10),
   video varchar(10)
);
create table Medium_Format(
   id integer,
   name varchar(20),
   parent integer,
   child_order boolean,
   year integer,
   has_discids varchar(10),
   description varchar(10),
   gid varchar(40)
);
create table Release(
   id integer,
   gid varchar(40),
   name varchar(20),
   artist_credit integer,
   release_group integer,
   status boolean,
   packaging boolean,
   language integer,
   script integer,
   barcode integer,
   comment varchar(100),
   edits_pending boolean,
   quality varchar(10),
   last_updated decimal(29,3)
);
create table Release_Group(
   id integer,
   gid varchar(40),
   name varchar(30),
   artist_credit integer,
   type varchar(10),
   comment varchar(100),
   edits_pending boolean,
   last_updated decimal(29,3)
);
create table Release_Group_Secondary_Type_Join(
   release_group integer,
   secondary_type integer,
   created varchar(30)
);
create table Release_Group_Secondary_Type(
   id integer,
   name varchar(10),
   parent varchar(10),
   child_order boolean,
   description varchar(10),
   gid varchar(40)
);
create table Release_Group_Primary_Type(
   id integer,
   name varchar(10),
   parent varchar(10),
   child_order integer,
   description varchar(10),
   gid varchar(40)
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
   gid varchar(40),
   name varchar(10),
   type boolean,
   edits_pending boolean,
   last_updated decimal(29,3),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   ended varchar(10),
   comment varchar(100)
);
create table Area_Type(
   id integer,
   name varchar(10),
   parent varchar(10),
   child_order integer,
   description decimal(168,0),
   gid varchar(40)
);
create table Area_Alias_Type(
   id integer,
   name varchar(20),
   parent varchar(10),
   child_order boolean,
   description varchar(10),
   gid varchar(40)
);
create table Area_Alias(
   id integer,
   area integer,
   name varchar(10),
   locale varchar(10),
   edits_pending boolean,
   last_updated decimal(29,3),
   type varchar(10),
   sort_name varchar(10),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   primary_for_locale varchar(10),
   ended varchar(10)
);
create table Place(
   id integer,
   gid varchar(40),
   name varchar(20),
   type boolean,
   address varchar(100),
   area integer,
   coordinates varchar(10),
   comment varchar(100),
   edits_pending boolean,
   last_updated decimal(29,3),
   begin_date_year varchar(10),
   begin_date_month varchar(10),
   begin_date_day varchar(10),
   end_date_year varchar(10),
   end_date_month varchar(10),
   end_date_day varchar(10),
   ended varchar(10)
);
create table Place_Type(
   id integer,
   name varchar(20),
   parent varchar(10),
   child_order integer,
   description decimal(173,0),
   gid varchar(40)
);
create table Gender(
   id boolean,
   name varchar(10),
   parent varchar(10),
   child_order boolean,
   description varchar(10),
   gid varchar(40)
);
