#!/bin/bash

# depends on lamp.sh (php-pear)

echo 'Ensuring servername config is created...'

# if a file does not exist...
if [ ! -f /etc/httpd/conf.d/serverName.conf ];
then

    echo 'No serverName.conf found in /etc/httpd/conf.d... creating one.'
    echo 'ServerName is 33.33.33.10, change as needed on your own.'

    # add servername directive to the apache config
    echo 'ServerName 33.33.33.10' > /etc/httpd/conf.d/serverName.conf

    # restart the server to kick in new settings
    /etc/init.d/httpd restart
fi