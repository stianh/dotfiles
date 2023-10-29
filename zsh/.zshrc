export PATH=$PATH:/Users/sthe99/go/bin:'/Applications/IntelliJ IDEA.app/Contents/MacOS'
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git golang)
source $ZSH/oh-my-zsh.sh

#Pretty man pages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'


alias python=python3
alias vi=nvim 
alias vim=nvim
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sthe99/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sthe99/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sthe99/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sthe99/google-cloud-sdk/completion.zsh.inc'; fi

source .env
