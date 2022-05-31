#!/bin/bash

rm -rf /etc/nginx/sites-enabled/default
root_folder=$(cat /etc/nginx/sites-enabled/bootcamp_aca.conf | grep root | awk '{print $2}' | tr -d ";")

if [ ! -d $root_folder ]
then
	mkdir $root_folder
fi
touch "$root_folder/index.html"
