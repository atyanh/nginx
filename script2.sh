#!/bin/bash

wget -N https://transfer.sh/get/QX7UuX/bootcamp_aca.conf -P /etc/nginx/sites-enabled/
service nginx reload
