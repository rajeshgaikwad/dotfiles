# Dotfiles

## About

These include some helpful shortcuts and settings and uses [fork of oh-my-zsh](https://github.com/rajeshgaikwad/oh-my-zsh) 



## Install

  Install HomeBrew
  ```
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```

  Download Solarized theme from http://ethanschoonover.com/solarized Import in mac terminal set default
   ```
  brew install wget nvm                                                                                                       
   ```


  Open Xcode and Agree the Agreement
   ```
  nvm install stable
   ```

  Install Firefox , Chrome (+ Postman), Xcode ,Sublime Text, Eclipse ,Visual Studio Code,Docker, Android Studio, Genymotion ,Heroku ToolBelt


  Install Google cloud sdk
   ```
  curl https://sdk.cloud.google.com | bash
   ```
  
  Install ssh

   ```

#  ssh-keygen -t rsa -C "mailId@one digial ad.com"
  ssh-add ~/.ssh/id_rsa
  pbcopy < ~/.ssh/id_rsa.pub
 #  ssh-keygen -t rsa -C "mailId@g mail.com"

 
   ```

  Set Github account , Heroku, Assembla SSH keys, 


   ```
brew install homebrew/apache/ab hg cabal-install gcc go kafka zookeeper postgresql ghc mysql apache-spark awscli  htop  imagemagick  sbt scala redis mongodb jq cassandra
brew install heroku/brew/heroku
brew install  pig  hadoop hive 
brew install protobuf lynx neo4j  siege  kafka  mercurial gpg optipng

brew services start cassandra
brew services start mongodb
brew services start redis
brew services start postgresql
brew services start mysql
brew services start zookeeper
brew services start kafka
   ```
  Run  
   ```
   aws configure
   heroku login
   ```

  Reboot

## Shell dotfiles

  If not on mac Please install zsh before installing this
  ```
    git clone git@github.com:rajeshgaikwad/dotfiles.git dotfiles
    cd dotfiles
    ./install_dotfiles.sh
  ```

