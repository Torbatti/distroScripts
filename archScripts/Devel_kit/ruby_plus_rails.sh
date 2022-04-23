#you also need an sql manager -> sqlite / mysql(mariadb)
sudo pacman -S --needed base-devel git ruby npm yarn 

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

sudo gem update
sudo gem install rails
