#!/bin/bash


while true
do
	cpu=$(grep 'cpu ' /proc/stat | awk '{print ($2+$4)*100/($2+$4+$5)}')
	mem=$(free -h | grep Mem | awk  '{print $3}')
	disk=$(sudo du -sh /  2> /dev/null | tail -1 | awk '{print $1}')
	echo "<HTML>" > /var/www/bootcamp_aca/index.html
	echo "<HEAD>" >> /var/www/bootcamp_aca/index.html
	echo "<TITLE>Stats</TITLE>" >> /var/www/bootcamp_aca/index.html
	echo "</HEAD>" >> /var/www/bootcamp_aca/index.html
	echo "<H2>CPU Usage: $cpu%</H2>" >> /var/www/bootcamp_aca/index.html
	echo "<H2>Memory Usage: $mem</H2>" >> /var/www/bootcamp_aca/index.html
	echo "<H2>Disk Usage: $disk</H2>" >> /var/www/bootcamp_aca/index.html
	echo "</BODY>" >> /var/www/bootcamp_aca/index.html
	echo "</HTML>" >> /var/www/bootcamp_aca/index.html
	sleep 10
done
