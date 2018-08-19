#!/usr/bin/env zsh

# Nerd font
brew update
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

plugins=$HOME/.custom-omzsh/plugins
themes=$HOME/.custom-omzsh/themes

# Create directories
printf "creating directories => "
[[ -d $plugins ]] || mkdir $plugins
printf "done\n"


# K (https://github.com/supercrabtree/k)
k=$plugins/k

if [[ -d $k ]]; then
	pushd $k
	printf "k is already installed, pulling latest => "
	git pull
	popd
else
	printf "k is not installed, cloning from github => "
	git clone https://github.com/supercrabtree/k $k &> /dev/null && printf "done\n" || "failed\n"
fi

# powerlevel9k (https://github.com/bhilburn/powerlevel9k.git)
powerlevel9k=$themes/powerlevel9k
if [[ -d $powerlevel9k ]]; then
	pushd $powerlevel9k
	printf "powerlevel9k is already installed, pulling latest => "
	git pull
	popd
else
	printf "powerlevel9k is not installed, cloning from github => "
	git clone git clone https://github.com/bhilburn/powerlevel9k.git $powerlevel9k &> /dev/null && printf "done\n" || "failed\n"
fi