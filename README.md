# dotfiles
![](https://user-images.githubusercontent.com/4976854/81347627-65b0a100-9071-11ea-91e7-3a3a8381c043.gif)

## Mac OSX

- Desktop & Dock setup
    ```
    System Settings -> Desktop & Dock

    Dock
    - Size: smallest
    - Position on screen: Left
    - Minimize window using: Scale effect
    [x] Minimize windows into application icon
    [ ] Automatically hide and show the Dock
    [ ] Show suggested and recent apps in Dock

    Mission Control
    [x] Group windows by application
    - Mission Control:     F3
    - Application windows: F4
    ```
- Accessibility setup
    ```
    System Settings -> Accessibility

    - Zoom -> Use scroll gesture with modifier keys to zoom -> Control
    - Pointer Control -> Trackpad Options... -> Use trackpad for dragging -> Three Finger Drag
    ```
- Sound setup
    ```
    System Settings -> Sound

    [x] Play feedback when volume is changed
    ```
- Control Center setup
    ```
    System Settings -> Control Center

    Control Center Modules
    - Focus: Always Show in Menu Bar
    - Sound: Always Show in Menu Bar

    Other Modules
    - Bettery
        [x] Show Percentage

    Menu Bar Only
    - Clock -> Cloud Options...
        - Show date: Always
        - [x] Display the time with seconds
    ```
- Keyboard setup
    ```
    System Settings -> Keyboard

    - Keyboard Shortcuts
        - Mission Control
            - Move left a space: ctrl + shift + h
            - Move right a space: ctrl + shift + l
        - Input Sources
            - Select the previous input source: ctrl + space
        - Screenshots
            [ ] unselect all (using snagit instead)
        - Spotlight
            [x] Show Spotlight search: option + space
            [ ] Show Finder search window
        - App Shortcuts
            - Google Chrome
                - Pin Tab: shift + cmd + p
                - Select Next Tab: cmd + k
                - Select Previous Tab: cmd + j
        - Modifier Keys
            - Caps Lock Key: Control
    - Input Sources
        [x] Show Input menu in menu bar
    ```
- Trackpad setup
    ```
    System Settings -> Trackpad

    - Point & Click
        [x] Tap to click
        - Tracking speed: Fastest
    - Scroll & Zoom
        [ ] Scroll direction: Natural
    ```
- Energy Saver setup
    ```
    System Settings -> Energy Saver

    - Power Adapter
        [x] Prevent computer from sleeping automatically when the display is off
    ```
- Date & Time setup
    ```
    System Settings -> Date & Time

    - Clock
        [x] Display the time with seconds
        [x] Show date
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
- `brew install --cask dashlane`
- `brew install --cask google-chrome`
- `brew install --cask divvy`
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
      - Q: upper half
      - Z: lower half
  ```
- `brew install --cask alfred`
  ```
  - General
      - Alfred Hotkey: cmd + space
  - Features
      - Clipboard History
          - History
              [x] Keep Plain Text
              [x] Keep Images
              - Viewer Hotkey: cmd + shift + c
          - Advanced
              - Ignore Apps:
                  - Dashlane
  - Appearance
      - Options
          - Show Alfred on: active screen
  - Powerpack
      - License in Dashlane
  ```
- `brew install --cask sogouinput`
  ```
  Need to run the installer to install
  ```
- `brew install --cask visual-studio-code`
  ```
  - Login using Settings Sync github account
  - enable vscode key repeat
      - defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
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
- `brew install --cask snagit`
  ```
  - Image Capture: cmd + shift + 1
  - Image Capture (copy to clipboard): cmd + shift + 2
  ```
- `brew install --cask LICEcap`
- install Logitech G HUB
  ```
  - Commands -> Navigation (drag shortcut to mouse key)
      - cmd + [: G5
      - cmd + ]: G4
  ```
- ---
- `brew install asdf`
- `brew install multitail`
- `brew install ranger`
- `brew install fd`
- `brew install bat`

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
    ```
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```
1. install [zsh-spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt#oh-my-zsh)
    ```
    git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    ```
1. install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh)
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    ```
1. ``ln -s `pwd`/zshrc ~/.zshrc``
1. `touch ~/.zshrc_custom`

Ref for zsh spaceship prompt [options](https://github.com/denysdovhan/spaceship-prompt/blob/master/docs/Options.md).

## .tmux.conf

1. ``ln -s `pwd`/tmux.conf ~/.tmux.conf``
1. install [tpm](https://github.com/tmux-plugins/tpm)
    ```
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```
1. install tmux-plugins `<prefex> I`

## .vimrc

1. Install [Vundle](https://github.com/VundleVim/Vundle.vim)
    ```
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    ```
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
