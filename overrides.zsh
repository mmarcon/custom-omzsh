# Aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias zshreload="source ~/.zshrc"
alias v="vagrant"
alias npmr="npm run $@"

alias github='git -c user.name="Massimiliano Marcon" -c user.email="me@marcon.me"'

## Functions
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}