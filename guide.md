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
1. Open Chrome, go to `http://localhost:8080`, pin the tab so it is the first one
1. Go to full screen, also turn off tool bar by uncheck View -> Always Show Toolbar in Full Screen
1. Now you would have a full screen terminal session in Chrome, and no shortcut for Chrome would work

Great!
