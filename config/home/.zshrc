export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"

plugins=(git gradle tmux zsh-completions colored-man-pages)

# For zsh completions
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash completion

eval "$(rbenv init -)"
eval "$(thefuck --alias)"

# User configuration
export EDITOR="usr/bim/vim"

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
