#
apt install -y apache2 apache2-utils
systemctl start apache2
systemctl enable apache2
#
apt install mariadb-server mariadb-client
systemctl start mariadb
systemctl enable mariadb
mysql_secure_installation

apt install php7.4 libapache2-mod-php7.4 php7.4-mysql php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline
