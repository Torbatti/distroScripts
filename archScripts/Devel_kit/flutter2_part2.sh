flutter config --android-studio-dir ~/Android/android-studio/
flutter config --android-sdk ~/Android/Sdk/

flutter doctor
flutter doctor --android-licenses

flutter config --enable-linux-desktop

flutter upgrade #! this will upgrade dev kits for platforms you activated
#- linux dev kit

    #installing gtk3 
    #    sudo pacman -S --needed gtk3
    #- ruby 
    #    sudo pacman -S --needed ruby-gtk3
    #for more lang supports :https://wiki.archlinux.org/title/GTK/Development
