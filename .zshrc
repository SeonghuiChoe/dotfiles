# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  fzf
  fasd
  tmux
)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Gcloud completion
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# Kubernetes completion & alias
source <(kubectl completion zsh)
alias k='kubectl'
alias ku='kubectl'
alias kub='kubectl'

# FZF
export FZF_DEFAULT_COMMAND='
  (git ls-files --exclude-standard -c -o ||
   git ls-tree -r --name-only HEAD ||
   find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
      sed s/^..//) 2> /dev/null'

# Default aliases
alias ll='ls -alh'
alias d='docker'
alias doco='docker-compose'
alias di='docker image'
alias dia='docker images'
alias dp='docker ps'
alias dpa='docker ps -a'
alias dsp='docker system prune -f'
