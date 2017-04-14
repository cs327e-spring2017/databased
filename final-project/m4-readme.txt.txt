We should list the columns we need to look at here. 

1: Which genre has the most artists?
discog/genres.genre_id
discog/genres.name
discog/releases_genres.release_id
discog/releases_genre_id
discog/releases.release_id
discog/releases_artists.artist_id
discog/artists.tist_id
discog/artists.name
musicbrainz/artist.name

2: Which countries have more than 5 artists? 
musicbrainz/release_country.country
musicbrainz/release.id
musicbrainz/release.release_group
musicbrainz/release_group.id
musicbrainz/release_group.artist_credit
musicbrainz/artist_credit.id
musicbrainz/artist_credit.name
musicbrainz/artist_credit_name.artist_credit
musicbrainz/artist_credit_name.aritst
musicbrainz/artist.id
discog/artists.tist_id

3. Which year had the most releases?
musicbrainz/release.name
discog/releases.title
discog/releases.released

4. What is Nepal's most released genre?
discog/releases.release_id
discog/releases_formats.release_id
discog/releases_formats.format_type
musicbrainz/medium_format.name
musicbrainz/medium_format.id
musicbrainz/medium.id
musicbrainz/medium.release
musicbrainz/release.id

5. What are newest releases in the United Kingdom?
discog/releases.released
discog/releases.title
musicbrainz/release.name
musicbrainz/release.id
musicbrainz/release_country.release
musicbrainz/release_country.country

6. Which gender is most common?
musicbrainz/artist.name
musicbrainz/artist.gender
musicbrainz/gender.id
musicbrainz/gender.name

7. What is the most common name of artists? 
musicbrainz/artist.name
discog/artists.name

8. Which genres have the most releases?
discog/genres.genre_id
discog/genres.name
discog/releases_genres.release_id
discog/releases_genres.genre_id
discog/releases.release_id
discog/releases.title
musicbrainz/release.name

9. Which gender has the most classical songs?
musicbrainz/gender.name
musicbrainz/gender.id
musicbrainz/artist.gender
musicbrainz/artist.name
discog/artists.name
discog/releases_artists.release_id
discog/releases_artists.artist_id
discog/releases.release_id
discog/releases_genres.release_id
discog/releases_genres.genre_id
discog/genres.genre_id
discog/genres.name

10. Which areas have releases in the hip-hop genre? 
musicbrainz/release_country.country
musicbrainz/release_country.release
musicbrainz/release.id
musicbrainz/release.name
discog/releases.title
discog/releases.release_id
discog/releases_genres.release_id
discog/releases_genres.genre_id
discog/genres.genre_id
discog/genres.name

More work was trimmed off by not checking ids, they should just be integers anyway. 
Date was kept as year only. Couldn't be changed to integer because some are characters (???).
Some queries had to be changed due to limitations in the data.
Note: not all column refs here are correct.
Some of these queries are literally cancer to look at because the names are really long...
Also, some shcemas weren't correct and had to be fixed.
Some queries we picked got realy long results so they were limited.