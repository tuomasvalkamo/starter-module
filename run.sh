#! /usr/bin/bash

echo "Copying files to /srv/salt..."

sudo mkdir -p /srv/salt/starter-module

sudo cp init.sls /srv/salt/starter-module
sudo cp -r micro/ /srv/salt/starter-module
sudo cp -r apache2/ /srv/salt/starter-module