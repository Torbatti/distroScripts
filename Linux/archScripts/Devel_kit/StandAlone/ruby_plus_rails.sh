#installing ruby is a pain
#you also need an sql manager -> sqlite / mysql(mariadb)
sudo pacman -S --needed --noconfirm base-devel git ruby npm yarn sqlite

#add this to .bashrc .zshrc or .profile

    echo 'export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"' >> ~/.bashrc
    echo 'export PATH="$PATH:$GEM_HOME/bin"' >> ~/.bashrc

gem update
gem install rails
