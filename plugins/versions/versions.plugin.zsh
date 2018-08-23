ver() {
    # Mongo Shell
    mongo_shell_version=$(mongo --version | egrep "version\sv" | cut -d " " -f 4 | sed s/v//)
    mongo_shell_icon="\uE7A4"
    mongo_shell_icon_color=$fg[green]
    echo "${mongo_shell_icon_color}${mongo_shell_icon}${reset_color} Mongo Shell: ${mongo_shell_version}"

    # Node
    node_version=$(node --version | sed s/v//)
    node_icon="\uf898"
    node_icon_color=$fg[green]
    echo "${node_icon_color}${node_icon}${reset_color} Node.js: ${node_version}"

    # Git
    git_version=$(git --version | cut -d" " -f 3)
    git_icon="\uf7a1"
    git_icon_color=$fg[red]
    echo "${git_icon_color}${git_icon}${reset_color} Git: ${git_version}"
}