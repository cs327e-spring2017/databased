import sys
from queries import *

COMMAND_COUNT = 5
running = True

cursor = connect()
if cursor is None:
	print("Error: Unable to connect to the database")
	sys.exit()

while running:
	print("\n==============IMDB COMMAND MENU===============")
	print("| 1. GET NUMBER OF ROW IN ACTORS             |")
	print("| 2. GET NUMBER OF MOVIES IN A CERTAIN YEAR  |")
	print("| 3. GET CAST INFORMATION OF A MOVIE         |")
	print("| 4. EXIT                                    |")
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
		exmaple_one(cursor)
	elif choice == 2:
		exmaple_two(cursor)
	elif choice == 3:
		exmaple_three(cursor)
	elif choice == 4:
		print('Exiting Command Menu...')
		running = False
