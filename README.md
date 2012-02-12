# Kickstart Drupal Project

This kickstart expects to be used with vagrant to provision, and with
a CentOS 6.1 box with basic LAMP stack already installed.
Specifically, Box lamp-cent.6.1.

Copy (or symlink) the proper Vagrant file from data/vagrant/*/Vagrantfile
to to this dir. Then, run... "vagrant up" to boot dev environment.

See the settings in the Vagrantfile to detect the ip address and see what
provisioning scripts run.

## How to use

This project is not meant to be cloned (unless of course your creating your
own kickstart.) Rather it's meant to be downloaded and used as a startign
point at the begining of a project. To start a new project, generally you
would want to...

1. download the zip of this repo
2. rename the folder per the project name
3. rm -rf .git
4. git init / add new remote
5. commit and push to a new remote
