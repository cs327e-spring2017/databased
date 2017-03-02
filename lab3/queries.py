import psycopg2
from config import db

def connect():
    try:
        conn = psycopg2.connect(
            "dbname='" + db['DATABASE'] + "'" + 
            "user='" + db['USER'] + "'" + 
            "host='" + db['HOST'] + "'" + 
            "password='" + db['PASSWORD'] + "'"
            )
        cursor = conn.cursor()
        return cursor
    except:
        return None

def print_table(table):
    print("\n====RESULT TABLE====")

    cols = len(table[0])
    format_string = "%s " * cols
    for row in table:
        print (format_string % tuple(row))
    print("====================\n")


def run_query(query, cursor):
    cursor.execute(query)
    rows = cursor.fetchall()
    colnames = [desc[0] for desc in cursor.description]
    rows.insert(0, colnames)
    return rows

def exmaple_one(cursor):
    query = "SELECT count(*) from actors"
    result = run_query(query, cursor)
    print_table(result)

def exmaple_two(cursor):
    year = input('Choose a year: ')
    query = "SELECT count(*) from movies where year = " + year + ";"
    result = run_query(query, cursor)
    print_table(result)

def exmaple_three(cursor):
    title = input('Choose a movie: ')

    query = "SELECT idmovies, title, year from movies where title = '" + title + "' and type = 'FF' ORDER BY year ASC;"
    movie_id_table = run_query(query, cursor)

    if len(movie_id_table) > 2:
        print_table(movie_id_table)
        movie_id = input('Pick a movie id: ')

        query = "SELECT character, fname, lname, genders FROM casts INNER JOIN actors on casts.idactors = actors.idactors where idmovies = " + movie_id + ";"
        result = run_query(query, cursor)

        print_table(result)
    else:
        print('No movie correspondes to the title: ' + title)

def query_one(cursor):
    query = "select actor.first_name,actor.last_name, actor_aka_names.aka_name from actor inner join actor_aka_names on actor.actor_id=actor_aka_names.actor_id where actor.first_name = 'James';"
    result = run_query(query, cursor)
    print_table(result)

def query_two(cursor):
    query = "select * from genre order by genre;"
    result = run_query(query, cursor)
    print_table(result)

def query_three(cursor):
    query = "select genre.genre, count(movie.title) from movie inner join genre_movie on movie.movie_id=genre_movie.movie_id inner join genre on genre_movie.genre_id=genre.genre_id group by genre.genre having count(movie.title) > 2500;"
    result = run_query(query, cursor)
    print_table(result)

def query_four(cursor):
    query = "select count(*) from actor where gender = 'M';"
    result = run_query(query, cursor)
    print_table(result)

def query_five(cursor):
    query = "select count(genre) from genre;"
    result = run_query(query, cursor)
    print_table(result)

def query_six(cursor):
    query = "select max(year) from movie;"
    result = run_query(query, cursor)
    print_table(result)

def query_seven(cursor):
    query = "select movie.title, aka_movie.aka_movie_name from movie right outer join aka_movie on movie.movie_id=aka_movie.movie_id where movie.year > 2014;"
    result = run_query(query, cursor)
    print_table(result)

def query_eight(cursor):
    query = "select keyword.keyword, count(movie.title) from movie inner join movie_keyword on movie.movie_id=movie_keyword.movie_id inner join keyword on movie_keyword.keyword_id=keyword.keyword_id group by keyword.keyword having count(movie.title) > 1000 order by count(movie.title);"
    result = run_query(query, cursor)
    print_table(result)

def query_nine(cursor):
    query = "select aka_movie.aka_movie_name from aka_movie where year >2016 order by year;"
    result = run_query(query, cursor)
    print_table(result)

def query_ten(cursor):
    query = "select movie.title from movie where movie.title='Interstellar';"
    result = run_query(query, cursor)
    print_table(result)
