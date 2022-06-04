#!/bin/bash

./nginx_install.sh
if [ $? -gt 0 ]
then
	echo "Something is wrong with nginx server"
	exit
else
	echo "Script 1 works correctly, Nginx is working"
fi

./nginx_conf.sh
if [ $? -gt 0 ]
then
	echo "Something is wrong with downloading file"
	exit
else
	echo "Script 2 works correctly, file is downloaded"
fi

./index_cr.sh
if [ $? -gt 0 ]
then
	echo "Something is wrong with creating index.file"
	exit
else
	echo "index file is created"
fi

./update_stats.sh &
if [ $? -gt 0 ]
then
	echo "Something is wrong with monitoring file"
	exit
else
	echo "Monitoring is working"
fi

