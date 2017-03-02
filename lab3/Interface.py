import sys
from queries import *

COMMAND_COUNT = 12
running = True

cursor = connect()
if cursor is None:
	print("Error: Unable to connect to the database")
	sys.exit()

while running:
	print("\n==============IMDB COMMAND MENU===============")
	print("| 1. See which actor's whos first name is James.                              |")
	print("| 2. See all genres available, ordered alphabetically.                        |")
	print("| 3. See which genres have more than 2500 movies in them.                     |")
	print("| 4. See all actors who are male.                                             |")
	print("| 5. See how many genres there are.                                           |")
	print("| 6. See the latest year a movie was made in.                                 |")
	print("| 7. See AKA titles of movies made in 2014 or later.                          |")
	print("| 8. See which keywords have more than 1000 movies, in ascending order.       |")
	print("| 9. see movies and their AKA titles made in 2016  or later, ordered by year. |")
        print("| 10.See if there is a movie called 'Interstellar'.                           |")
	print("| 11. EXIT                                    |                               |")
	print("==============================================\n")
	choice = input("Select a Option: ")

	try:
		choice = int(choice)
		if choice > COMMAND_COUNT:
			raise ValueError  
	except ValueError as err:
		print('Not a Valid Command.')
		continue
	
	if choice == 1:
		query_one(cursor)
	elif choice == 2:
		query_two(cursor)
	elif choice == 3:
		query_three(cursor)
        elif choice == 4:
		query_four(cursor)
	elif choice == 5:
		query_five(cursor)
	elif choice == 6:
		query_six(cursor)
        elif choice == 7:
		query_seven(cursor)
	elif choice == 8:
		query_eight(cursor)
	elif choice == 9:
		query_nine(cursor)
	elif choice == 10:
		query_ten(cursor)
              
	elif choice == 11:
		print('Exiting Command Menu...')
		running = False
