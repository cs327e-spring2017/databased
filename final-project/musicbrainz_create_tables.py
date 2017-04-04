import glob

###Test for CSV search
##files = glob.glob('**/*.csv', recursive = True)
##print(files)
##
##
##print(files[1])


#Test for txt search
filenames = glob.glob('*.sql', recursive = True)
print(filenames)

with open('musicbrainz_create_tables.sql', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            outfile.write(infile.read()+ '\n')
