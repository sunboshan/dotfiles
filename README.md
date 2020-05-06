# dotfiles
Repo for dotfiles.

## .vimrc

1. `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim` to install [Vundle](https://github.com/VundleVim/Vundle.vim)
2. ``ln -s `pwd`/vimrc ~/.vimrc``
3. In vim, run `:PluginInstall`
4. To use nvim, in `~/.config/nvim/init.vim` (need to create the path first)

    ```
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath=&runtimepath
    source ~/.vimrc
    ```

## .tmux.conf

1. ``ln -s `pwd`/tmux.conf ~/.tmux.conf``

## .zshrc

1. install [oh-my-zsh](https://ohmyz.sh/)
1. install [zsh-spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt#oh-my-zsh)
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
1. ``ln -s `pwd`/zshrc ~/.zshrc``
1. `touch ~/.zshrc_custom`

## .tigrc

1. ``ln -s `pwd`/tigrc ~/.tigrc``

## iTerm2 theme

1. In iTerm2 Preferences -> Profiles -> Colors -> Colors Presets... -> Import...
1. select `materialdark.itermcolors`
1. select `materialdark`

## softwares

- [brew](https://brew.sh)
  ```
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
- `brew cask install iterm2`
- `brew install tmux`
- `brew install nvim`
- `brew cask install google-chrome`
- `brew cask install dashlane`
- `brew cask install divvy`
- `brew cask install sogouinput`
- `brew install ag`
- `brew install tig`
- `brew install multitail`
- `brew install asdf`
- `brew install cloc`

## chrome extensions

- [vimium](https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
- [Keyboard Shortcuts to Reorder Tabs](https://chrome.google.com/webstore/detail/keyboard-shortcuts-to-reo/moigagbiaanpboaflikhdhgdfiifdodd)

## misc

- show hidden files
```
$ defaults write com.apple.Finder AppleShowAllFiles true
$ killall Finder
```
- key repeat faster
```
$ defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
$ defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
# then log out and log in
```

- three finger drag
```
System Preferences -> Accessibility -> Pointer Control -> Trackpad Options... -> Enable dragging (three finger drag)
```
