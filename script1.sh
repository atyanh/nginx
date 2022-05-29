#!/bin/bash

nginx_exists=$(nginx -v 2> /dev/null)
nginx_exists=$?
if [ ! $nginx_exists = 0 ]
then
	#if nginx isn't installed
	apt install --assume-yes nginx
fi
sleep 1

#checking if nginx works
response=$(curl -i 127.0.0.1 2>/dev/null | head -n 1 | cut -d$' ' -f2)
if [[ $response -eq 200 ]]
then
	echo "Everything works correctly"
else
	echo "Your nginx has a problem"
fi


