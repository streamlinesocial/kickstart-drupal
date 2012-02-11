#!/usr/bin/env bash

# variables
dbName='db_devel'

echo 'Checking for Drupal install status...'

# jump into the drupal root
cd /var/www/html

# only drush site-install if not yet installed
if [ ! -f sites/default/settings.php ];
then

  echo "No Drupal settings.php detected, installing... (database: $dbName)"

  # ensure files dir is installed, and writable by apache
  mkdir -p sites/default/files
  chmod 0777 sites/default/files

  # install site with drush
  drush --yes site-install standard --db-su=root --db-url=mysql://root@localhost/$dbName

else
  echo 'Drupal settings.php found, skipping site-install'
fi