#!/bin/bash


# DB_NAME="wordpress_db"
# DB_USER="wordpress_user"
# DB_PASS="wordpress_password"
# WORDPREESS_ADMIN_USER="abdel-ou"
# WORDPREESS_ADMIN_PASS="lolabdel-ou@123"
# WORDPREESS_ADMIN_EMAIL="lol@gmail.lol"
# WORDPREESS_EDITOR_USER="xeditor"
# WORDPREESS_EDITOR_PASS="editor@123"
# WORDPREESS_EDITOR_EMAIL="xeditor@lol.com"


# if [ ! -f "/var/www/wordpress/wp-config.php" ]; then
    echo "File does not exist, running wp core config..."
    wp core config --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASS --dbhost=mariadb --dbprefix=wp_ --allow-root
    wp core install --url=$DOMIN_NAME --title="Sample site" --admin_user=$WORDPREESS_ADMIN_USER --admin_password=$WORDPREESS_ADMIN_PASS --admin_email=$WORDPREESS_ADMIN_EMAIL --allow-root;
    wp user create $WORDPREESS_EDITOR_USER $WORDPREESS_EDITOR_EMAIL --role=editor --user_pass=$WORDPREESS_EDITOR_PASS --allow-root
    
# else
#     echo "File exists, not running wp core config..."
# fi



exec php-fpm8.2 -F


