#!/bin/bash

chmod -R 777 /var/lib/php5

if [[ ! -e /var/www/nZEDb/www/config.php ]]; then

  echo "config.php does not exist. Cloning nZEDb..."
  mkdir /var/www
  cd /var/www
  git clone https://github.com/nZEDb/nZEDb.git
  chown www-data:www-data nZEDb/www -R
  chmod 777 /var/www/nZEDb/libs/smarty/templates_c

  chmod -R 777 /var/www/nZEDb/resources/covers/
  chmod -R 777 /var/www/nZEDb/resources/nzb/
  chmod -R 777 /var/www/nZEDb/resources/tmp/unrar/

else

  cd /var/www/nZEDb/misc/update/nix/tmux
#  exec php start.php

fi
