export PATH=$PATH:/Users/sthe99/go/bin:'/Applications/IntelliJ IDEA.app/Contents/MacOS'
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git golang)
source $ZSH/oh-my-zsh.sh
#bindkey -v

bindkey -s ^f "tmux-sessionizer\n"
alias ghf="gh repo list -L 300 protectorinsurance"
alias python=python3
alias vi=nvim 
alias vim=nvim
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sthe99/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sthe99/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sthe99/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sthe99/google-cloud-sdk/completion.zsh.inc'; fi


function cd() {
  builtin cd "$@"

  if [[ -z "$VIRTUAL_ENV" ]] ; then
    ## If env folder is found then activate the vitualenv
      if [[ -d ./.venv ]] ; then
        source ./.venv/bin/activate
      fi
  else
    ## check the current folder belong to earlier VIRTUAL_ENV folder
    # if yes then do nothing
    # else deactivate
      parentdir="$(dirname "$VIRTUAL_ENV")"
      if [[ "$PWD"/ != "$parentdir"/* ]] ; then
        deactivate
      fi
  fi
}
source ~/.env


eval "$(fzf --zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
