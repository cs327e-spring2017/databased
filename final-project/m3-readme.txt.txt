Tolan: 
Edited the python script to batch run through every csv using glob. 
Other scripts were made to attach the individual sql scritps to one file. 

Initially when we selected the csvs to use, we copied them into another folder for organization. The create_tables.py scripts were then able recursively find all the csvs, then looped through and generated DDLs for all of them. Another script was used to combine all the DDLs into a single file, and run until no errors apperaed. The load.pys also used glob to detect csvs, remove the extension and locate the proper table since none of the tables were renamed from their csv parent. The load.py created copy statements for each csv and put it in a single file. A batch SQL file was made to run everything at once smoothly.