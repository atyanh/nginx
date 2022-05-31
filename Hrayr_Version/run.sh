#!/bin/bash

./script1.sh
if [ $? -gt 0 ]
then
	echo "Something is wrong with nginx server"
	exit
else
	echo "Script 1 works correctly, Nginx is working"
fi

./script2.sh
if [ $? -gt 0 ]
then
	echo "Something is wrong with downloading file"
	exit
else
	echo "Script 2 works correctly, file is downloaded"
fi

./script3.sh
if [ $? -gt 0 ]
then
	echo "Something is wrong with creating index.file"
	exit
else
	echo "index file is created"
fi

./script4.sh &
if [ $? -gt 0 ]
then
	echo "Something wrong with monitoring file"
	exit
else
	echo "Monitoring is working"
fi

