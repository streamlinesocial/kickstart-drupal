### Kickstart Drupal Project

This kickstart expects to be used with vagrant to provision, and with
a CentOS 6.1 box with basic LAMP stack already installed.
Specifically, Box lamp-cent.6.1.

Copy (or symlink) the proper Vagrant file from data/vagrant/*/Vagrantfile
to to this dir. Then, run... "vagrant up" to boot dev environment.

See the settings in the Vagrantfile to detect the ip address and see what
provisioning scripts run.