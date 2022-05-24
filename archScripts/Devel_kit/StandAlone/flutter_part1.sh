#installing Flutter is Pain in the ass even more than installing ruby :(

#installing base deps
    sudo pacman -S --needed git base-devel yay

#installing dart,kotlin and flutter
    sudo pacman -Sy kotlin dart
    snap refresh flutter --edge
        #sudo snap install flutter --classic
        #! ^ with --classic version you cant compile and debug Linux / old cmake version error
        #! as reported here https://github.com/canonical/flutter-snap/issues/45

    flutter doctor #! it will output errors after downloading flutter , we will fix them below
#installing chromium
    sudo snap install chromium
    #replacing chrome PATH with chromium PATH
        CHROME_EXECUTABLE=/snap/bin/chromium
        export CHROME_EXECUTABLE
    #adding it to .bashrc
        echo 'CHROME_EXECUTABLE=/snap/bin/chromium' >> ~/.bashrc
        echo 'export CHROME_EXECUTABLE' >> ~/.bashrc





    #!this method doesnt work anymore :(
        #- android dev kit
        # yay -S android-sdk android-sdk-platform-tools android-sdk-build-tools
        # yay -S android-platform
        #installing android command line
        # wget https://dl.google.com/android/repository/commandlinetools-linux-6609375_latest.zip
        # unzip commandlinetools-linux-6609375_latest.zip -d cmdline-tools
        # sudo mkdir --parents "$ANDROID_HOME/cmdline-tools/latest"
        # sudo mv cmdline-tools/* "$ANDROID_HOME/cmdline-tools/latest/"
        # export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
        #sdkmanager --install "cmdline-tools;latest"
    #! ^ doesnt work anymore


    #installing android studio
    # Android download page : https://developer.android.com/studio
    wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.14/android-studio-2021.2.1.14-linux.tar.gz
    unzip android-studio*.tar.gz
    mkdir aszip && mv ./android-studio*.tar.gz ./aszip
        #move to Android in home directory
        mv android-studio ~/Android
        cd ~/Android/android-studio/bin/
        ./studio
        #! open android studio , system setting > android sdk > sdk tools and install android sdk command line tool chain
