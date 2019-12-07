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
