export ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true
unsetopt correct_all
export ZSH_THEME="miloshadzic"
export EDITOR='subl -w'
export BYOBU_PREFIX=$(brew --prefix)

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew git osx svn textmate autojump ruby rails3 bundler)
source $ZSH/oh-my-zsh.sh

export NODE_PATH=/usr/local/lib/node_modules
export JDK_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
export JAVA_HOME=$JDK_HOME
export DEV_HOME="$HOME/dev"
export ANDROID_HOME="$DEV_HOME/tools/android-sdk"
export MAVEN_HOME="$DEV_HOME/tools/maven"
export GROOVY_HOME="$DEV_HOME/lang/groovy"
export GRADLE_HOME="$DEV_HOME/tools/gradle"
export MAVEN_OPTS=-Xmx512m
export GRADLE_OPTS="-Xmx1024m -Xms256m -XX:MaxPermSize=512m -XX:+CMSClassUnloadingEnabled -XX:+HeapDumpOnOutOfMemoryError"
export REBEL_HOME="$HOME/dev/tools/jrebel"

# Customize to your needs...
export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin/:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:$DEV_HOME/lang/scala/bin:$MAVEN_HOME/bin:$GRADLE_HOME/bin:$GROOVY_HOME/bin:$DEV_HOME/tools/sbt/:$DEV_HOME/tools/android-sdk/tools:$DEV_HOME/tools/android-sdk/platform-tools:$DEV_HOME/tools/play:$DEV_HOME/tools/grails/bin:/usr/local/share/npm/bin
#Pretty man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#Aliases
alias eg="/opt/local/bin/eg.pl"
alias mci="mvn clean install -DskipTests"
alias mcit="mvn clean install"

if [ -f `brew --prefix`/etc/autojump ]; then
	  . `brew --prefix`/etc/autojump
fi

#source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(rbenv init -)"

export PATH=$PATH:/Users/stianh/.rbenv/shims

