#!/bin/bash
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

# Chime Functions

chimeQ1 () {
	mpg123 $(yes $hourchime | head -n $1)
}
chimeQ2 () {
	mpg123 $(yes $fifteen | head -n $1)
}
chimeQ3 () {
	mpg123 $(yes $thirty | head -n $1)
}
chimeQ4 () {
	mpg123 $(yes $fortyfive | head -n $1)
}

# Chime the Hour when minutes = 00 and Quarter Hours on the 15, 30, 
# and 45 minute marks.

case "$(date +%M)" in
	00) 
		chimeQ1
		;;
	15) 
		chimeQ2
		;;
	30)
		chimeQ3
		;;
	45)
		chimeQ4
		;;
esac
