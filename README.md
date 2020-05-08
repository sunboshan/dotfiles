# dotfiles
Repo for dotfiles. The gif demonstrates `zsh`, `tmux`, `vim`, `tig` and `gotty`.

![](https://user-images.githubusercontent.com/4976854/81347627-65b0a100-9071-11ea-91e7-3a3a8381c043.gif)

## .zshrc

1. install [oh-my-zsh](https://ohmyz.sh/)
1. install [zsh-spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt#oh-my-zsh)
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
1. ``ln -s `pwd`/zshrc ~/.zshrc``
1. `touch ~/.zshrc_custom`

Ref for zsh spaceship prompt [options](https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md).

## .tmux.conf

1. ``ln -s `pwd`/tmux.conf ~/.tmux.conf``

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

## .gotty

1. ``ln -s `pwd`/gotty ~/.gotty``

## .tigrc

1. ``ln -s `pwd`/tigrc ~/.tigrc``

## iTerm2 theme (deprecated)

1. In iTerm2 Preferences -> Profiles -> Colors -> Colors Presets... -> Import...
1. select `materialdark.itermcolors`
1. select `materialdark`
1. install [Meslo Slashed](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) font
1. iTrm2 Preferences -> Profiles -> Text -> Font -> select `Meslo LG M for Powerline`

## softwares

- [brew](https://brew.sh)
  ```
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  ```
- `brew cask install iterm2` (deprecated)
- `brew install tmux`
- `brew install nvim`
- `brew install yudai/gotty/gotty`
- `brew cask install google-chrome`
- `brew cask install dashlane`
- `brew cask install divvy`
- `brew cask install sogouinput`
- `brew install ag`
- `brew install fd`
- `brew install tig`
- `brew install bat`
- `brew install cloc`
- `brew install asdf`
- `brew install multitail`

## chrome extensions

- [Vimium C - All by Keyboard](https://chrome.google.com/webstore/detail/vimium-c-all-by-keyboard/hfjbmagddngcpeloejdejnfgbamkjaeg)

1. Restore the vimium-c options from [vimium-c-options.json](vimium-c-options.json).
1. Create global shortcut in `chrome://extensions/shortcuts`
    - Custome shortcut 1, `ctrl + 0`
    - Custome shortcut 2, `crtl + o`

After this, you are able to switch tabs between gotty terminal and other tabs!!!

## misc

- show hidden files
```
$ defaults write com.apple.Finder AppleShowAllFiles true
$ killall Finder
```
- key repeat faster
```
$ defaults write -g InitialKeyRepeat -int 10    # normal minimum is 15 (225 ms)
$ defaults write -g KeyRepeat -int 1            # normal minimum is 2 (30 ms)
                                                # then log out and log in
```

- three finger drag
```
System Preferences -> Accessibility -> Pointer Control -> Trackpad Options... -> Enable dragging (three finger drag)
```

- app shortcuts
```
System Preferences -> Keyboard -> Shortcuts -> App Shortcuts -> Google Chrome.app

- Pin Tab               shift + cmd + p
- Select Next Tab       cmd + k
- Select Previous Tab   cmd + j
```

## setup guide

Refer to [guide](guide.md).
