#!/bin/bash
cp /wp-upload/wp-config.php /WordPress/releases/20180623/
cd /WordPress/releases/20180623/wp-content
ln -s /wp-upload/uploads uploads
cd /var/www
#rm html
ln -s /WordPress/releases/20180623 html
chown apache:apache -R /WordPress/releases/20180623
