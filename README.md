# How to use
* Clone the repo
* `chmod +x term-config.sh`
* `./term-config.sh`
# Resources Used
* [ ITerm, Zsh ](https://sourabhbajaj.com/mac-setup/iTerm/)
* [ Zsh Plugin Manager ](https://github.com/sorin-ionescu/prezto)
* [ Vim Plugin Manager (vim plug) ](https://github.com/junegunn/vim-plug)
* [ Vim Awesome ](https://github.com/amix/vimrc)
* [ Vim Code Completion ](https://github.com/neoclide/coc.nvim)
* [ ZPrezto Extensions and Themes ](https://timonbimon.medium.com/yet-another-step-by-step-guide-for-a-better-terminal-setup-6c5e879d4c8c)
* [ FZF and Jump Info ](https://timonbimon.medium.com/yet-another-step-by-step-guide-for-a-better-terminal-setup-6c5e879d4c8c)
* [ Shpotify ](https://github.com/hnarayanan/shpotify), [ Shpotify how to ](https://medium.com/@dallasbille/controlling-your-spotify-from-terminal-a505990bafc2)
# How to Add Multiple Git SSH Keys
1. Generate an ssh key in a folder somewhere on your machine, document the path
2. In a source file for the `.zshrc` add the following alias:
`<aliasname> ='GIT_SSH_COMMAND="ssh -i <path to ssh key>" git'`
example: `alias forcengit='GIT_SSH_COMMAND="ssh -i /Users/karimalatrash/Documents/Forcen-Code/.ssh/forcen_ssh" git'`
