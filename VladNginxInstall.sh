#!/bin/bash

if [ $(which nginx) -n ] 
then
	sudo apt install -y nginx
fi

set echo off
sudo nginx -t
set echo on

if [[ $? == 0 ]]
then
	echo "nginx is configured properly"
else
	echo "nginx is not configured properly"
fi
