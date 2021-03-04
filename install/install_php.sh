#yum -y install tmux


adduser asi
passwd asi



sudo yum -y update
echo '[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1' > /etc/yum.repos.d/nginx.repo
yum -y install nginx
cd /etc/nginx
mkdir sites-available
mkdir sites-enable
cd

#CentOS 6

# yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
# yum install http://rpms.remirepo.net/enterprise/remi-release-6.rpm
yum install yum-utils
# yum-config-manager --enable remi-php71

yum install php php-mbstring php-mysql php-fpm

wget https://getcomposer.org/download/1.8.5/composer.phar
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer

/etc/init.d/php-fpm start

# server {
#     listen 80;
#     server_name stg.mj.jizhit.com;
#     root /usr/share/nginx/html/mujubao/staging/current/public;
#
#     add_header X-Frame-Options "SAMEORIGIN";
#     add_header X-XSS-Protection "1; mode=block";
#     add_header X-Content-Type-Options "nosniff";
#
#     index index.html index.htm index.php;
#
#     charset utf-8;
#
#     location / {
#         try_files $uri $uri/ /index.php?$query_string;
#     }
#
#     location = /favicon.ico { access_log off; log_not_found off; }
#     location = /robots.txt  { access_log off; log_not_found off; }
#
#     error_page 404 /index.php;
#
#     location ~ \.php$ {
#         fastcgi_pass unix:/var/run/php/php7.1-fpm.sock;
#		  # fastcgi_pass 127.0.0.1:9000;
#         fastcgi_index index.php;
#         fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;
#         include fastcgi_params;
#     }
#
#     location ~ /\.(?!well-known).* {
#         deny all;
#     }
# 


vim /etc/php.ini
cgi.fix_pathinfo=0

vim /etc/php-fpm.d/www.conf



# curl --silent --location https://rpm.nodesource.com/setup_6.x | sudo bash -
curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash -

sudo yum -y install nodejs


sudo wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
sudo yum -y install yarn

#yum -y install mysql

# yum -y install mariadb-server
# systemctl start mariadb
# systemctl status mariadb
# systemctl enable mariadb
# mysql_secure_installation

####
# https://www.digitalocean.com/community/tutorials/how-to-install-mariadb-on-centos-7
#


###

#change file /etc/nginx/nginx.conf to include sites-enable/*
