#!/bin/bash

wgetretres=$(sudo wget -q -O /etc/nginx/sites-enabled/bootcamp_aca.conf https://transfer.sh/QX7UuX/bootcamp_aca.conf)

if [ $? == 0 ]
then
	echo "Config file downloaded succesfully"
	sudo rm -f /etc/nginx/sites-enabled/default
	sudo nginx -s reload
else
	echo "Errors on downloading config file: $wgetretres"
fi

