#JAVA
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"
export PATH=$JAVA_HOME/bin:$PATH
export GOPATH=$HOME/go
export GOROOT=`go env GOROOT`
export PATH=$PATH:$GOPATH/bin
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export ANDROID_HOME="/Users/rajesh/Library/Android/sdk"
export ANDROID_TOOLS="/Users/rajesh/Library/Android/sdk/tools"
export ANDROID_PLATFORM_TOOLS="/Users/rajesh/Library/Android/sdk/platform-tools"

if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark/1.6.1/libexec/"
  #export PYSPARK_SUBMIT_ARGS="--packages org.postgresql:postgresql:9.4.1208,TargetHolding:pyspark-cassandra:0.3.5,databricks:spark-sklearn:0.2.0 --master local[*] pyspark-shell"
fi

PATH=$PATH:$ANDROID_HOME:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS

#export PATH=$PATH:/Users/rajesh/Library/Android/sdk/platform-tools:/Applications/adt-bundle-mac-x86_64-20140624/sdk/platform-tools:/Applications/adt-bundle-mac-x86_64-20140624/sdk/tools

export PATH=/usr/local/share/npm/bin:$PATH


#echo 'export PATH=$PATH:/Users/rajesh/android-sdks/platform-tools/' >> ~/.bash_profile


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

export CLICOLOR=1  

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
export HBASE_HOME=/usr/local/Cellar/hbase/0.98.8/libexec/
export HADOOP=/usr/local/Cellar/hadoop121/1.2.1/libexec/
export PIG_CLASSPATH=/usr/local/Cellar/hadoop121/1.2.1/libexec/conf/:$HBASE_HOME/libexec/conf/hbase-site.xml:$HBASE_HOME/libexec/lib/zookeeper-3.4.5.jar:$HBASE_HOME/libexec/lib/guava-12.0.1.jar:$HBASE_HOME/libexec/lib/protobuf-java-2.5.0.jar
export PATH=$PATH:/usr/local/Cellar/hadoop121/1.2.1/bin
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Rajesh/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/Rajesh/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Rajesh/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/Rajesh/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
