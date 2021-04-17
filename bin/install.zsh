#!/usr/bin/env zsh

custom_omzsh=$HOME/.custom-omzsh
plugins=$custom_omzsh/plugins
themes=$custom_omzsh/themes
system=$custom_omzsh/system

source $custom_omzsh/helpers/functions.zsh

# Oh-My-Zsh (https://github.com/robbyrussell/oh-my-zsh)
if ask "Do you want to install Oh-My-Zsh?"; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Brew stuff
brew update
if ask "Do you want to install nerd-font?"; then
    brew tap caskroom/fonts
	brew cask install font-hack-nerd-font
fi
if ask "Do you want to install apparix?"; then
	brew install apparix
fi
if ask "Do you want to install git?"; then
	brew install git
fi
# Bat (https://github.com/sharkdp/bat)
if ask "Do you want to install bat?"; then
	brew install bat
fi

#Install NVM (https://github.com/creationix/nvm)
if ask "Do you want to install nvm?"; then
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
fi

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

# powerlevel9k (https://github.com/bhilburn/powerlevel9k)
powerlevel9k=$themes/powerlevel9k
if [[ -d $powerlevel9k ]]; then
	pushd $powerlevel9k
	printf "powerlevel9k is already installed, pulling latest => "
	git pull
	popd
else
	printf "powerlevel9k is not installed, cloning from github => "
	git clone https://github.com/bhilburn/powerlevel9k.git $powerlevel9k &> /dev/null && printf "done\n" || "failed\n"
fi

# powerlevel10k (https://github.com/bhilburn/powerlevel10k)
powerlevel10k=$themes/powerlevel10k
if [[ -d $powerlevel10k ]]; then
	pushd $powerlevel10k
	printf "powerlevel10k is already installed, pulling latest => "
	git pull
	popd
else
	printf "powerlevel10k is not installed, cloning from github => "
	git clone https://github.com/bhilburn/powerlevel10k.git $powerlevel10k &> /dev/null && printf "done\n" || "failed\n"
fi

#Install MongoDB completions (https://github.com/JamesKovacs/zsh_completions_mongodb#zsh_completions_mongodb)
mongodbPlugin=$plugins/mongodb
if [[ -d $mongodbPlugin ]]; then
	pushd $mongodbPlugin
	printf "MongoDB completions already installed, pulling latest => "
	git pull
	popd
else
	printf "MongoDB completions not installed, cloning from github => "
	git clone https://github.com/JamesKovacs/zsh_completions_mongodb.git $mongodbPlugin &> /dev/null && printf "done\n" || "failed\n"
fi

# copy files into the system
cp system/zshrc $HOME/.zshrc