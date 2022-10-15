#!/bin/bash

#This program, when placed in your startup config, will 1) update all your packages 2) upgrade them 3) display a list of current events to stdout and 4) tell you about the weather.

#Get input from user
echo "Good morning $(whoami)! Would you like your morning update? Y/N:  "
read -i " "

#Allow for no action
#for (( i=$y ; i=$n i++ ))
#	$(sudo) $(apt) $(update) $(sudo) $(apt) $(full-upgrade) 
#	if (( i=$n ))
#	exit
#	fi
echo "Updating/Upgrading packages..."
x=30
while [[ x -gt 0 ]]
	sleep 1
	echo "Updooting the doots..."
	let x=x-1

#Get current events

$(wget)	https://lite.cnn.com/en > todays_news.txt
$(head) todays_news.txt

#Get todays weather


$(cat) todays_weather.txt < $(wget) https://weather.com/weather/today/l/1dcd504debac9d3cc77ca449c19be882581bae2471114db2c796bd92450ec1b0

return
