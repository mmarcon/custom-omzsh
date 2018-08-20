# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.custom-omzsh/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git k macos nvm)

custom_omzsh=$HOME/.custom-omzsh
themes=$custom_omzsh/themes
icon_override=$HOME/.icon

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
  custom_icon dir vcs status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    ip
)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Add the custom prompt icon segment
POWERLEVEL9K_CUSTOM_ICON="echo -n '\uF0FC'"
POWERLEVEL9K_CUSTOM_ICON_FOREGROUND="yellow"
POWERLEVEL9K_CUSTOM_ICON_BACKGROUND="black"

if [[ -f $icon_override ]]; then
  source "$icon_override"
fi

source $themes/powerlevel9k/powerlevel9k.zsh-theme
