# Set up guide

The goal is to maximize usage of keyboard, hence making using computer really fun again!

Tools used:

- Chrome
- Vimium C chrome extension
- tmux
- gotty

1. Open a terminal, `$ tmux`
1. tmux `:new` create a new session
1. `$ gotty -w tmux a -t 0` to start a gotty session that attach to the first tmux session
1. Now you can quit the terminal app
1. Open Chrome, go to `http://localhost:8080`, pin the tab and make sure it's the first tab
1. Go to full screen, also turn off tool bar by uncheck View -> Always Show Toolbar in Full Screen
1. Now you would have a full screen terminal session in Chrome, and no shortcut for Chrome would work

Great! Now the question is, how do you navigate through your termianl tab and other normal webpage tab? That's where we will use Vimium C extension.

Here are the rules to follow:
1. When in terminal tab
    1. `ctrl + 0` to go to previous visited tab
    1. `ctrl + o` to go to a new tab
1. When in other tabs
    1. Use `g0` to go to the terminal tab
    1. Use `,.` to navigate through tabs
    1. Use `l` to go to previous visited tab (except for terminal tab)
    1. Use `o` to go to a new tab
    1. Use `e` to edit the address bar
    1. Use `t` to go to an open tab
    1. Use `b` to go to a bookmark link
