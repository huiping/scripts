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


# wget https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.0.tar.gz
wget https://cache.ruby-lang.org/pub/ruby/2.5/ruby-2.5.1.tar.gz
tar xvzf ruby-2.5.1.tar.gz
sudo yum -y install libxslt-devel libyaml-devel libxml2-devel gdbm-devel libffi-devel zlib-devel openssl-devel readline-devel curl-devel pcre-devel git valgrind-devel mysql-devel mariadb ImageMagick-devel ImageMagick gcc-c++
cd ruby-2.5.1
./configure
make
sudo make install
cd

echo 'gem: "--no-document"' > ~/.gemrc

gem install bundler

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
