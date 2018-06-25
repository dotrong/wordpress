#!/bin/bash
DIR="%WP_DIRECTORY%"
cp /wp-upload/wp-config.php ${DIR}
cd ${DIR}/wp-content
ln -s /wp-upload/uploads uploads
cd /var/www
#rm html
if [ -L /var/www/html ]
then
	rm /var/www/html
fi
cd /var/www
ln -s ${DIR} html
chown apache:apache -R ${DIR} 
