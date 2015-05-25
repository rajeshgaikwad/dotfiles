# Rajesh's dotfiles

## About

These include some helpful shortcuts and settings 

I use [my own fork of oh-my-zsh](https://github.com/rajeshgaikwad/oh-my-zsh) 



## Install

  Install HomeBrew
  ```
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

  Download Solarized theme from http://ethanschoonover.com/solarized Import in mac terminal set default
   ```
  brew install wget nvm                                                                                                       
   ```

  Install Firefox , Chrome (+ Postman), Xcode ,Sublime Text

  Open Xcode and Agree the Agreement
   ```
  xcode-select --install                                                                                                
   ```
  Install Java 1.7, Download from oracle site 

  Install Node.js
   ```
  nvm install 0.10
  nvm install 0.12
  nvm install iojs
  nvm alias default v0.12.2   
   ```
  Install VirtualBox, Android Studio, Genymotion ,Heroku ToolBelt

   ```
  ssh-keygen -t rsa -C "mailId@example.com"
  ssh-add ~/.ssh/id_rsa
  pbcopy < ~/.ssh/id_rsa.pub
   ```

  Set Github account , Heroku, Assembla SSH keys, 


   ```
  brew install hg cabal-install mercurial go kafka zookeeper siege ghc mysql apache-spark awscli gpg htop optipng imagemagick  protobuf lynx neo4j sbt scala pig   redis mongodb cassandra  hadoop  hive 


  ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
  ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
  ln -sfv /usr/local/opt/cassandra/*.plist ~/Library/LaunchAgents
  ln -sfv /usr/local/opt/zookeeper/*.plist ~/Library/LaunchAgents
  ln -sfv /usr/local/opt/kafka/*.plist ~/Library/LaunchAgents
  ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
   ```
  Run  
   ```
   aws configure
   ```

   Install Heroku Toolbelt from https://toolbelt.heroku.com/
   ```
   heroku login
   ```

  Reboot







    ## Shell dotfiles

    Please install zsh before installing this
    git clone git@github.com:rajeshgaikwad/dotfiles.git dotfiles
    cd dotfiles
    ./install_dotfiles.sh


