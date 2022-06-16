##install lamp arch

    #installing Apache
        sudo pacman -S apache --noconfirm
    #Starting And Enabling(runs automaticly at startup) Apache
        sudo systemctl start httpd
        sudo systemctl enable httpd
    
    #installing php
        sudo pacman -S php php-apache --noconfirm
    
    #installing MySql
        sudo pacman -S mysql --noconfirm
    #Making A new Detabase
        mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    #Starting And Enabling(runs automaticly at startup) mySql
        sudo systemctl start mysqld 
        sudo systemctl enable mysqld 
    #Just to make it more secure
        sudo mysql_secure_installation 
