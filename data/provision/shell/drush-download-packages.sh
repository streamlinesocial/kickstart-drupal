#!/usr/bin/env bash

# jump into the drupal root
cd /var/www/html

# only drush download if our modules have not yet been downloaded
if [ ! -f sites/all/modules/contrib/admin_menu/admin_menu.module ];
then
  echo 'Downloading modules for site'

  # create dir for module install
  mkdir -p sites/all/modules/contrib
  mkdir -p sites/all/themes

  # todo: install db with drush

  # use --no flag to prevent re-downloading modules
  # drush dl --no --destination=sites/all/modules/contrib admin_menu
  # drush dl --no --destination=sites/all/modules/contrib backup_migrate
  # drush dl --no --destination=sites/all/modules/contrib pathauto
  # drush dl --no --destination=sites/all/modules/contrib token
  # drush dl --no --destination=sites/all/modules/contrib webform
  # drush dl --no --destination=sites/all/modules/contrib webform_validation
  # drush dl --no --destination=sites/all/modules/contrib install_profile_api
  # drush dl --no --destination=sites/all/modules/contrib menu_token
  # drush dl --no --destination=sites/all/themes zen

else
  echo 'Modules installed, no need to download.'
fi