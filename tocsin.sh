#! /bin/bash
#
#Tocsin - Plays a Chime at the Hour and Quarter Hour

# Quarter Chime Variables

fifteen="./chimes/quarter1.mp3"
thirty="./chimes/quarter2.mp3"
fortyfive="./chimes/quarter3.mp3"

# Hour Variable

hour=`date +%I`

# Hour Chime Variable

hourchime="./chimes/$hour-hour.mp3"

# Chime the Hour when minutes = 00 and Quarter Hours on the 15, 30, 
# and 45 minute marks.

case "$(date +%M)" in
	00) 
		mpg123 $hourchime
		;;
	15) 
		mpg123 $fifteen
		;;
	30)
		mpg123 $thirty
		;;
	45)
		mpg123 $fortyfive
		;;
esac
