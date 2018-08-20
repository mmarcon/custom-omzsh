# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.custom-omzsh/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git k macos nvm)

custom_omzsh=$HOME/.custom-omzsh
themes=$custom_omzsh/themes

# Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshreload="source ~/.zshrc"
alias v="vagrant"
alias npmr="npm run $@"

alias github='git -c user.name="Massimiliano Marcon" -c user.email="me@marcon.me"'

#Go
export GOPATH=$HOME/dev/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

## Functions
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

POWERLEVEL9K_MODE='nerdfont-complete'

# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_mongo dir vcs status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    ip
)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Add the custom Mongo icon prompt segment
POWERLEVEL9K_CUSTOM_MONGO="echo -n '\uE7A4'"
POWERLEVEL9K_CUSTOM_MONGO_FOREGROUND="green"
POWERLEVEL9K_CUSTOM_MONGO_BACKGROUND="black"

source $themes/powerlevel9k/powerlevel9k.zsh-theme
