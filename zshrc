#JAVA
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH
export PATH=$PATH:/Applications/adt-bundle-mac-x86_64-20140624/sdk/platform-tools:/Applications/adt-bundle-mac-x86_64-20140624/sdk/tools
PATH=/usr/local/share/npm/bin:$PATH

ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rajesh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby heroku brew coffee node npm rvm sbt scala)

source $ZSH/oh-my-zsh.sh

# Put any proprietary or private functions/values in ~/.private, and this will source them
if [ -f $HOME/.private ]; then
    source $HOME/.private
fi

if [ -f $HOME/.profile ]; then
    source $HOME/.profile  # Read Mac .profile, if present.
fi

# qfind - used to quickly find files that contain a string in a directory
qfind () {
    find . -exec grep -l $1 {} \;
    return 0
}

# Custom exports
## Set EDITOR to /usr/bin/vim if Vim is installed
if [ -f /usr/bin/vim ]; then
    export EDITOR=/usr/bin/vim
fi

### Added by the Heroku Toolbelt
export PATH=$PATH:/usr/local/heroku/bin

LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8
export LANG
export LC_ALL

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export HBASE_HOME=/usr/local/Cellar/hbase/0.98.4/libexec/
export HADOOP=/usr/local/Cellar/hadoop121/1.2.1/libexec/
export PIG_CLASSPATH=/usr/local/Cellar/hadoop121/1.2.1/libexec/conf/:$HBASE_HOME/libexec/conf/hbase-site.xml:$HBASE_HOME/libexec/lib/zookeeper-3.4.5.jar:$HBASE_HOME/libexec/lib/guava-12.0.1.jar:$HBASE_HOME/libexec/lib/protobuf-java-2.5.0.jar
export PATH=$PATH:/usr/local/Cellar/hadoop121/1.2.1/bin
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
