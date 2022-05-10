sudo pacman -S docker --needed --noconfirm

cd /etc/ && mkdir docker && cd docker 
echo '{ "registry-mirrors": ["http://docker.bardia.tech:8080/"] }' >  daemon.json

systemctl start docker
systemctl enable docker

gpasswd -a $USER docker