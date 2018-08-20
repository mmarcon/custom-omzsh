# Max's shell setup

## What's in here?
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
* [powerlevel9k](https://github.com/bhilburn/powerlevel9k)
* Some custom plugins:
    * apparix
    * macos utilities
    * [k](https://github.com/supercrabtree/k)
    * [lazy loaded nvm](http://broken-by.me/lazy-load-nvm/)

## Customization

There is one bit that can be customized very easily: the icon/logo shown as the first item in powerlevel9.

To change it, simply pick one from [Nerdfonts](http://nerdfonts.com/) and put in your `$HOME` a file named `.icon` with the following content:

```shell
# Code from Nerdfonts
POWERLEVEL9K_CUSTOM_ICON="echo -n '\uF44B'"
# Color of the symbol
POWERLEVEL9K_CUSTOM_ICON_FOREGROUND="green"
# Background color
POWERLEVEL9K_CUSTOM_ICON_BACKGROUND="black"
```