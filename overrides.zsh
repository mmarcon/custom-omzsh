custom_omzsh=$HOME/.custom-omzsh
themes=$custom_omzsh/themes
icon_override=$HOME/.icon

# Aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshreload="source ~/.zshrc"
alias v="vagrant"
alias npmr="npm run $@"
alias cat="bat"

alias github='git -c user.name="Massimiliano Marcon" -c user.email="me@marcon.me"'

#Go
export GOPATH=$HOME/dev/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

## Functions
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

POWERLEVEL9K_MODE='nerdfont-complete'

# Customise the Powerlevel9k prompts
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_DELIMITER="⋯"
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_icon dir vcs status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    command_execution_time ip
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
