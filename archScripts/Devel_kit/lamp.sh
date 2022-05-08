#install lamp arch
sudo pacman -S apache 
sudo systemctl start httpd
sudo systemctl enable httpd
sudo pacman -S php php-apache
sudo pacman -S mysql 
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld 
sudo systemctl enable mysqld 
sudo mysql_secure_installation 
