#install lamp arch
sudo pacman -S apache 
sudo systemctl start httpd 
sudo pacman -S php php-apache
sudo pacman -S mysql 
sudo systemctl start mysqld 
