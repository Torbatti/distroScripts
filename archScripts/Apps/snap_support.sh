git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
cd ..
rm -R snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
#sudo snap install code --classic
