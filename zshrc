# oh-my-zsh configure
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
DISABLE_AUTO_UPDATE="true"
SPACESHIP_TIME_SHOW=true
SPACESHIP_ELIXIR_SHOW=false
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
setopt no_share_history

# system env
export ERL_AFLAGS="-kernel shell_history enabled"
export GIT_EDITOR="nvim"

# aliases
alias b="bat"
alias c="cd"
alias e="exit"
alias m="man"
alias t="tmux"
alias v="nvim"
alias w="which -as"
alias pe="printenv"
alias ez="nvim $HOME/.zshrc_custom"
alias sz="source $HOME/.zshrc_custom"
alias mz="man zshbuiltins"
alias ts="tig status"
alias em="erl -man"
alias i="iex -S mix"

alias aiam="open https://console.aws.amazon.com/iam"
alias avpc="open https://console.aws.amazon.com/vpc"
alias aec2="open https://console.aws.amazon.com/ec2"
alias acfn="open https://console.aws.amazon.com/cloudformation"
alias alambda="open https://console.aws.amazon.com/lambda"
alias aecs="open https://console.aws.amazon.com/ecs"
alias acw="open https://console.aws.amazon.com/cloudwatch"
alias as3="open https://console.aws.amazon.com/s3"
alias addb="open https://console.aws.amazon.com/dynamodb"
alias acode="open https://console.aws.amazon.com/codesuite"
alias asns="open https://console.aws.amazon.com/sns/v3"
alias asqs="open https://console.aws.amazon.com/sqs"

# source autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# source custom settings
source $HOME/.zshrc_custom
