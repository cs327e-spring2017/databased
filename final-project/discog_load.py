import glob

###Test for CSV search
##files = glob.glob('**/*.csv', recursive = True)
##print(files)
##
##
##print(files[1])


#Test for txt search
filenames = glob.glob('*.csv', recursive = True)
header = """/* C:/Users/az-su/Documents/databased/final-project/load_discog.sql */""" + "\n" +\
        """set search_path to discog;""" + "\n\n"



endText = "iam_role 'arn:aws:iam::656818381183:role/redshift_s3_role'" + "\n" + \
"region 'us-east-1'" + "\n" + \
"""csv quote '"' ignoreheader 1 trimblanks compupdate ON """ + "\n" + \
"maxerror 50;" + "\n\n" 


with open('load_discog.sql', 'w') as outfile:
    outfile.write(header)
    for fname in filenames:
        noPath = ''.join(fname.rsplit('\\', 1))
        noExtension = noPath.replace('.csv','')
        print(noExtension)
        line1 = "copy " + noExtension + " " + "from " + "\n"
        line2 = "'s3://cs327e-final-project-datasets/discog-csv/" + noPath +"'" + "\n"
        finalSQL = line1+line2+endText
        print(finalSQL)
        outfile.write(finalSQL)

with open('check_discog.sql', 'w') as outfile:
    for fname in filenames:
        noPath = ''.join(fname.rsplit('\\', 1))
        noExtension = noPath.replace('.csv','')
        line1 = "select * from discog."
        line2 = " order by random() limit 10; \n"
        finalSQL = line1+noExtension+line2
        print(finalSQL)
        outfile.write(finalSQL)       

