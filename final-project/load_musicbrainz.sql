/* C:/Users/az-su/Documents/databased/final-project/load_musicbrainz.sql */
set search_path to musicbrainz


copy artists from
's3://cs327e-final-project-datasets/discog_csv/artists.csv'
iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'
region 'us-east-1'
csv quote '"' ignoreheader 1 trimblanks compupdate ON
maxerror 50;