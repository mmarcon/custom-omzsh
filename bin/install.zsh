#!/usr/bin/env zsh

plugins=$HOME/.custom-omzsh/plugins

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