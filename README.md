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

## iTerm2 theme

1. In iTerm2 Preferences -> Profiles -> Colors -> Colors Presets... -> Import...
1. select `materialdark.itermcolors`
1. select `materialdark`

## softwares

1. [brew](https://brew.sh)
  ```
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
1. `brew cask install iterm2`
1. `brew install tmux`
1. `brew install nvim`
1. `brew cask install google-chrome`
1. `brew cask install dashlane`
1. `brew cask install divvy`
1. `brew cask install sogouinput`
1. `brew install ag`
1. `brew install tig`
1. `brew install multitail`
1. `brew install asdf`
1. `brew install cloc`

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

- three finger drag, System Preferences -> Accessibility -> Pointer Control -> Trackpad Options... -> Enable dragging (three finger drag)

