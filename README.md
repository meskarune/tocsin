tocsin
======

tocsin: a sound clock that chimes the quarters and hours

###Planned themes:### 
	westminister quarters 
	wind chimes

In one hour, the quarters and hours will be chimed with a total of 5 
chimes per hour. 

An example from 1:00 to 2:00 would be:

1:00 Hour chime with one toll
1:15 First quarter chime
1:30 Second quarter chime
1:45 Third quarter chime
2:00 Hour chime with two tolls

This script should be run with cron. To create a chron job for your 
user run this in a terminal:

>crontab -e
	
Then add a cron job to that file. Here is a cheat sheet for cron jobs:

>* * * * * command to be executed
>- - - - -
>| | | | |
>| | | | ----- Day of week (0 - 7) (Sunday=0 or 7)
>| | | ------- Month (1 - 12)
>| | --------- Day of month (1 - 31)
>| ----------- Hour (0 - 23)
>------------- Minute (0 - 59)

This runs Tocsin every 15 minutes:

>0,15,30,45 * * * * /path/to/tocsin

This runs tocsin every 15 minutes between the hours of 8am and 
10pm:

>0,15,30,45 8-22 * * * /path/to/tocsin

This runs tocsin every 15 minutes between the hours of 8am and 10pm
only on weekdays:

>0,15,30,45 8-22 * * 1-5 /path/to/tocsin 

If you only want the hours to chime do:

>@hourly /path/to/tocsin 
