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
alias ci="code-insiders $@"

mongoshells=('mongosh' 'mongosh.dev' 'mongosh.bin' 'mongosh.brew')
for mongoshell in $mongoshells; do
  alias ${mongoshell}="NODE_PATH=$HOME/.mongodb/mongosh/global_modules/node_modules MONGOSH_ASYNC_REWRITER2=1 ${mongoshell} $@"
done

alias github='git -c user.name="Massimiliano Marcon" -c user.email="me@marcon.me"'

#Go
export GOPATH=$HOME/dev/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$GOPATH/bin

## Functions
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# source $themes/powerlevel10k/powerlevel10k.zsh-theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# OS identifier color.
export ICON_FOREGROUND="yellow"
# Custom icon.
export ICON_CONTENT_EXPANSION=$'\uF0FC'

if [[ -f $icon_override ]]; then
  source "$icon_override"
fi

[[ ! -f $custom_omzsh/p10k.zsh ]] || source $custom_omzsh/p10k.zsh