\c imdb

\copy actor from 'D:/Downloads/csv_dataset_full/csv_dataset_full/actors.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy movie from 'D:/Downloads/csv_dataset_full/csv_dataset_full/movies.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy genre from 'D:/Downloads/csv_dataset_full/csv_dataset_full/genres.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy keyword from 'D:/Downloads/csv_dataset_full/csv_dataset_full/keywords.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy actor_aka_names from 'D:/Downloads/csv_dataset_full/csv_dataset_full/aka_names.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy series from 'D:/Downloads/csv_dataset_full/csv_dataset_full/series.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy aka_movie from 'D:/Downloads/csv_dataset_full/csv_dataset_full/aka_titles.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy casts from 'D:/Downloads/csv_dataset_full/csv_dataset_full/cast.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy genre_movie from 'D:/Downloads/csv_dataset_full/csv_dataset_full/movies_genres.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
\copy movie_keyword from 'D:/Downloads/csv_dataset_full/csv_dataset_full/movies_keywords.csv' (header TRUE, format csv,delimiter ',', encoding 'UTF8');
