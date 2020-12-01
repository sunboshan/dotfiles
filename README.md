# dotfiles
![](https://user-images.githubusercontent.com/4976854/81347627-65b0a100-9071-11ea-91e7-3a3a8381c043.gif)

## Mac OSX

- Dock setup
    ```
    System Preferences -> Dock

    - Size: smallest
    - Position on screen: Left
    - Minimize window using: Scale effect
    [x] Minimize windows into application icon
    [x] Automatically hide and show the Dock
    [ ] Show recently applications in Dock
    ```
- Mission Control setup
    ```
    System Preferences -> Mission Control

    [x] Group windows by application
    - Mission Control:     F3
    - Application windows: F4
    ```
- Accessibility setup
    ```
    System Preferences -> Accessibility

    - Zoom -> Use scroll gesture... -> Control
    - Pointer Control -> Trackpad Options... -> Enable dragging -> three finger drag
    ```
- Sound setup
    ```
    System Preferences -> Sound

    [x] Play feedback when volume is changed
    [x] Show volume in menu bar
    ```
- Trackpad setup
    ```
    System Preferences -> Trackpad

    - Point & Click
        [x] Tap to click
        - Tracking speed: Fastest
    - Scroll & Zoom
        [ ] Scroll direction: Natural
        - Tracking speed: Fastest
    ```
    ```

    ```
- remapping caps lock to ctrl (need to do it for every keyboard)
    ```
    System Preferences -> Keyboard -> Modifier Keys... -> Caps Lock Key: Control
    ```
- app shortcuts
   ```
   System Preferences -> Keyboard -> Shortcuts -> App Shortcuts

   - Google Chrome.app
       - Pin Tab               shift + cmd + p
       - Select Next Tab       cmd + k
       - Select Previous Tab   cmd + j
   ```
- show hidden files
    ```
    defaults write com.apple.Finder AppleShowAllFiles true
    killall Finder
    ```
- key repeat faster
    ```
    defaults write -g InitialKeyRepeat -int 10
    defaults write -g KeyRepeat -int 1
    # then log out and log in
    ```

## software

- [brew](https://brew.sh)
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
- `brew cask install dashlane`
- `brew cask install google-chrome`
- `brew cask install divvy`
  ```
  - General
      - Global shortcut: cmd + shift + d
      - License in Dashlane
  - Appearance
      - Columns: 7
  - Shortcuts
      - A: |*****  |
      - D: |  *****|
      - S: |*******|
  ```
- `brew cask install sogouinput`
  ```
  Need to run the installer to install
  ```
- `brew install tmux`
- `brew install nvim`
- `brew install yudai/gotty/gotty`
- `brew install tig`
- ---
- `brew install ag`
- `brew install autojump`
- `brew install cloc`
- `brew install fzf`
- `brew install urlview`
- ---
- `brew install asdf`
- `brew install multitail`
- `brew install ranger`
- `brew install fd`
- `brew install bat`
- `brew cask install iterm2` (deprecated)

## chrome extensions

- [Vimium C - All by Keyboard](https://chrome.google.com/webstore/detail/vimium-c-all-by-keyboard/hfjbmagddngcpeloejdejnfgbamkjaeg)
- [Shortcut Forwarding Tool](https://chrome.google.com/webstore/detail/shortcut-forwarding-tool/clnalilglegcjmlgenoppklmfppddien)

1. Restore the vimium-c options from [vimium-c-options.json](vimium-c-options.json).
    - vimium-c -> Options -> Import Settings -> vimium-c-options.json
1. Create global shortcut in `chrome://extensions/shortcuts` (no need to set up again, it's already in chrome profile)
    - Custom shortcut 1, `ctrl + 0`
    - Custom shortcut 2, `crtl + o`
    - Custom shortcut 3, `crtl + 9` (this is set in Shortcut Forwarding Tool section)

After this, you are able to switch tabs between gotty terminal and other tabs!!!

## .zshrc

1. install [oh-my-zsh](https://ohmyz.sh/)
1. install [zsh-spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt#oh-my-zsh)
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
1. ``ln -s `pwd`/zshrc ~/.zshrc``
1. `touch ~/.zshrc_custom`

Ref for zsh spaceship prompt [options](https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md).

## .tmux.conf

1. ``ln -s `pwd`/tmux.conf ~/.tmux.conf``
1. install [tpm](https://github.com/tmux-plugins/tpm), `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
1. install tmux-plugins `<prefex> I`

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

## setup guide

Refer to [guide](guide.md).

## iTerm2 theme (deprecated)

1. In iTerm2 Preferences -> Profiles -> Colors -> Colors Presets... -> Import...
1. select `materialdark.itermcolors`
1. select `materialdark`
1. install [Meslo Slashed](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) font
1. iTrm2 Preferences -> Profiles -> Text -> Font -> select `Meslo LG M for Powerline`
