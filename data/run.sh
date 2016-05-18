#!/bin/bash

chown me:me -R /var/www/sk-api
#chmod 777 -R /var/www/maisfesta/storage

exec "$@" &

tail -f /dev/null
