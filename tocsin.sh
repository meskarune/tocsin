#!/bin/bash

fifteen="./chimes/quarter1.mp3"
thirty="./chimes/quarter2.mp3"
fortyfive="./chimes/quarter3.mp3"
hour="./chimes/quarter4.mp3"
toll="./chimes/toll.mp3"

chimeQ1 () {
	mpg123 $(yes $fifteen | head -n $1)
}
chimeQ2 () {
	mpg123 $(yes $thirty | head -n $1)
}
chimeQ3 () {
	mpg123 $(yes $fortyfive | head -n $1)
}

# Chime the Quarter Hours on the 15, 30, and 45 minute marks

case "$(date +%M)" in
	15) 
		chimeQ1
		;;
	30)
		chimeQ2
		;;
	45)
		chimeQ3
		;;
esac
