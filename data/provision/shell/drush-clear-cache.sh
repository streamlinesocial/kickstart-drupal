#!/usr/bin/env bash

# jump into the drupal root
cd /var/www/html

echo 'Clearing drupal cache with "drush cc all"'

# clear cache for the dev env
drush cc all