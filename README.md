# I <3 The Terminal :)
teehee
# Resources Used
* [ ITerm, Zsh ](https://sourabhbajaj.com/mac-setup/iTerm/)
* [ Zsh Plugin Manager ](https://github.com/sorin-ionescu/prezto)
* [ Vim Plugin Manager (vim plug) ](https://github.com/junegunn/vim-plug)
* [ Vim Awesome ](https://github.com/amix/vimrc)
* [ Vim Code Completion ](https://github.com/neoclide/coc.nvim)
* [ ZPrezto Extensions and Themes ](https://timonbimon.medium.com/yet-another-step-by-step-guide-for-a-better-terminal-setup-6c5e879d4c8c)
# Contributing (As Recalled By Dodgy Memory)
1. Follow the instructions on the [ ITerm, Zsh ](https://sourabhbajaj.com/mac-setup/iTerm/) link to download, install and configure ITerm and Zsh. These are the terminal configurations that will add shortcuts and prettiness to your terminal shenannigans.
2. Download and install vim plug. This is a plugin manager required for nice things like autocomplete. The config file in dotfiles/.vimrc should handle adding good plugins that you want.
3. Download and install Vim Awesome. This will add the rest of the vim features that you wish you had like line numbers and editor schemes and whatever.
4. Add all the 'rc' files to the ~/ folder on your computer. These configure all of the things you just installed to get the same configuration as me.
5. Install the colour theme for Iterm by: CMD+i --> Colors --> Color Presets --> Import Theme --> Color Presets --> Spaceship
6. Install extensions found [ here ](https://timonbimon.medium.com/yet-another-step-by-step-guide-for-a-better-terminal-setup-6c5e879d4c8c)
7. Install shpotify from [ here ](https://github.com/hnarayanan/shpotify)
# How to Add Multiple Git SSH Keys
1. Generate an ssh key in a folder somewhere on your machine, document the path
2. In a source file for the `.zshrc` add the following alias:
`<aliasname> ='GIT_SSH_COMMAND="ssh -i <path to ssh key>" git'`
example: `alias forcengit='GIT_SSH_COMMAND="ssh -i /Users/karimalatrash/Documents/Forcen-Code/.ssh/forcen_ssh" git'`

TODO: https://medium.com/@dallasbille/controlling-your-spotify-from-terminal-a505990bafc2
