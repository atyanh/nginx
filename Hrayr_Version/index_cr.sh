#!/bin/bash

#Making files for web page

rm -rf /etc/nginx/sites-enabled/default

#Creating root folder for index.html

root_folder=$(cat /etc/nginx/sites-enabled/bootcamp_aca.conf | grep root | awk '{print $2}' | tr -d ";")

if [ ! -d $root_folder ]
then
	mkdir -p $root_folder
fi

touch "$root_folder/index.html"
