Tolan: Some issues with dates, they've been simplified to just year from the Musicbrainz sheet. 
	On discogs, we can just simplify to year after data has been uploaded. 

Data source connections: 

Combine on MusicBrainz_Artist + Discog_Artists = name/sort_name + name/realname

Combine on MusicBrainz_Medium_Format + Discog_Releases_Formats = name + format_type

Combine on MusicBrainz_Release + Discog_Releases = name + title

These are labeled as FK on the phsyical diagram.
