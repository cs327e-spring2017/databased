/* \i C:/Users/az-su/Documents/databased/final-project/load_musicbrainz.sql */
set search_path to musicbrainz;

copy artist from 
's3://cs327e-final-project-datasets/music-brainz-csv/artist.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy artist_alias from 
's3://cs327e-final-project-datasets/music-brainz-csv/artist_alias.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy artist_alias_type from 
's3://cs327e-final-project-datasets/music-brainz-csv/artist_alias_type.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy artist_credit_name from 
's3://cs327e-final-project-datasets/music-brainz-csv/artist_credit_name.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy artist_credit from 
's3://cs327e-final-project-datasets/music-brainz-csv/artist_credit.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy track from 
's3://cs327e-final-project-datasets/music-brainz-csv/track.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy medium from 
's3://cs327e-final-project-datasets/music-brainz-csv/medium.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy recording from 
's3://cs327e-final-project-datasets/music-brainz-csv/recording.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy medium_format from 
's3://cs327e-final-project-datasets/music-brainz-csv/medium_format.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy release from 
's3://cs327e-final-project-datasets/music-brainz-csv/release.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy release_group from 
's3://cs327e-final-project-datasets/music-brainz-csv/release_group.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy release_group_secondary_type_join from 
's3://cs327e-final-project-datasets/music-brainz-csv/release_group_secondary_type_join.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy release_group_secondary_type from 
's3://cs327e-final-project-datasets/music-brainz-csv/release_group_secondary_type.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy release_group_primary_type from 
's3://cs327e-final-project-datasets/music-brainz-csv/release_group_primary_type.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy release_country from 
's3://cs327e-final-project-datasets/music-brainz-csv/release_country.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy country_area from 
's3://cs327e-final-project-datasets/music-brainz-csv/country_area.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy area from 
's3://cs327e-final-project-datasets/music-brainz-csv/area.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy area_type from 
's3://cs327e-final-project-datasets/music-brainz-csv/area_type.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy area_alias_type from 
's3://cs327e-final-project-datasets/music-brainz-csv/area_alias_type.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy area_alias from 
's3://cs327e-final-project-datasets/music-brainz-csv/area_alias.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy place from 
's3://cs327e-final-project-datasets/music-brainz-csv/place.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy place_type from 
's3://cs327e-final-project-datasets/music-brainz-csv/place_type.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

copy gender from 
's3://cs327e-final-project-datasets/music-brainz-csv/gender.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON 
maxerror 50;

