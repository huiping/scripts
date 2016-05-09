#!/bin/bash
read -p "Input the database name you want to create: "
DB=$REPLY
read -p "Input the user name you want to create: "
USER=$REPLY
read -p "Input the user password you want to create: "
PASSWD=$REPLY
read -p "Input root password: "
MYSQL_ROOT_PW=$REPLY
SQL_CREATEDB="create database ${DB} character set utf8;"
SQL_CREATEUSER="grant all privileges on ${DB}.* to '${USER}'@'10.10.11.102' identified by '${PASSWD}';"
SQL_FLUSH="flush privileges;"
SQL_SHOWDBS="show databases;"
SQL_SHOWUSER="use mysql;select User,Host from mysql.user;"

#mysql -h 127.0.0.1 -P 3306 -u root --silent -p"${MYSQL_ROOT_PW}" -e "${SQL_CREATEDB};${SQL_CREATEUSER};${SQL_FLUSH};${SQL_SHOWDBS};${SQL_SHOWUSER}"
mysql -h 10.10.11.11 -P 3306 -u root -p"${MYSQL_ROOT_PW}" << EOF
${SQL_CREATEDB}
${SQL_CREATEUSER}
${SQL_FLUSH}
${SQL_SHOWDBS}
${SQL_SHOWUSER}
EOF
#drop user 'myuser'@'10.10.11.11';
