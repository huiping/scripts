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
FROM_HOST="localhost"
SQL_CREATEUSER="CREATE USER '${USER}'@'${FROM_HOST}' IDENTIFIED WITH MYSQL_NATIVE_PASSWORD BY '${PASSWD}'; GRANT ALL ON ${DB}.* TO '${USER}'@'${FROM_HOST}';"
SQL_FLUSH="FLUSH PRIVILEGES;"
SQL_SHOWDBS="show databases;"
SQL_SHOWUSER="use mysql;select User,Host,plugin from mysql.user;"

#mysql -h 127.0.0.1 -P 3306 -u root --silent -p"${MYSQL_ROOT_PW}" -e "${SQL_CREATEDB};${SQL_CREATEUSER};${SQL_FLUSH};${SQL_SHOWDBS};${SQL_SHOWUSER}"
mysql -h 127.0.0.1 -P 3306 -u root -p"${MYSQL_ROOT_PW}" << EOF
${SQL_CREATEDB}
${SQL_CREATEUSER}
${SQL_FLUSH}
${SQL_SHOWDBS}
${SQL_SHOWUSER}
EOF
