#! /bin/bash
# git clone https://git.selfmade.ninja/KamaleshSeervi/photogram2.git /var/www/html
mv /var/photogram/photogramconfig.json /var/www
sed -i "s/short_open_tag = .*/short_open_tag = On/" /etc/php/8.1/apache2/php.ini

/usr/sbin/apache2ctl -D FOREGROUND