# oh-my-zsh configure
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE="true"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
setopt no_share_history

# aliases
alias c="cd"
alias e="exit"
alias m="man"
alias t="tmux"
alias v="nvim"
alias w="which -as"
alias pe="printenv"
alias ez="vim $HOME/.zshrc_custom"
alias sz="source $HOME/.zshrc_custom"
alias mz="man zshbuiltins"
alias em="erl -man"
alias i="iex -S mix"

# source custom settings
source $HOME/.zshrc_custom