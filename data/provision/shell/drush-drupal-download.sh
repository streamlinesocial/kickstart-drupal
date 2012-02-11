#!/usr/bin/env bash

echo 'Checking for Drupal core installed'

# jump into the drupal root
cd /var/www/html

# only drush site-install if not yet installed
if [ ! -f index.php ];
then

    echo "No Drupal index.php detected, downloading..."

    # remove kickstart install if exists
    if [ -f KICKSTART-INSTALL.md ];
    then
        rm KICKSTART-INSTALL.md
    fi

    # download drupal with drush, into the /var/www/html directory
    drush dl drupal --yes --drupal-project-rename="drupal"
    cp -rfp drupal/* .
    rm -rf drupal

else
  echo 'Drupal index.php found, skipping drupal download'
fi