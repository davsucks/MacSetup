export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"

plugins=(git gradle tmux zsh-completions colored-man-pages)

# For zsh completions
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(thefuck --alias)"

# User configuration
export EDITOR="/usr/bin/vim"
export PATH=$PATH:/usr/local/texlive/2019/bin/x86_64-darwin

source ~/.bash_profile
source ~/.alias

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

