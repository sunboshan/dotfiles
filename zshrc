# oh-my-zsh configure
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE="true"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
setopt no_share_history

# aliases
alias w="which -as"
alias m="man"
alias h="fc -l"
alias pe="printenv"
alias ez="vim $HOME/.zshrc"
alias sz="source $HOME/.zshrc"
alias mz="man zshbuiltins"
alias em="erl -man"

# source custom settings
source $HOME/.zshrc_custom
