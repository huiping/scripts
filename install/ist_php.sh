yum -y install php72w php72w-cli php72w-fpm php72w-gd php72w-mbstring php72w-mysqlnd php72w-pdo php72w-pear php72w-pecl-redis php72w-process php72w-xml
php -v
ll /var/run/php-fpm/
systemctl status php-fpm
systemctl restart php-fpm
systemctl status php-fpm
systemctl enabled php-fpm
