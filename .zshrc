# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"
plugins=( git z npm node mvn meteor docker )

case $(uname) in
  Darwin)
    ## OSX
    plugins=( ${plugins} osx brew)
    #use java7
    export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
    eval "$(thefuck --alias)"
    ;;
  *)
    ;;
esac

source $ZSH/oh-my-zsh.sh
