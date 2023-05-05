#########################
# Source Relevant files
########################
# Source zprezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source autojump
if [[ -s "/usr/share/autojump/autojump.sh" ]]; then
  . /usr/share/autojump/autojump.sh
elif [[ -s "/opt/homebrew/etc/autojump.sh" ]]; then  
	. /opt/homebrew/etc/autojump.sh
fi

# Source keybindings
source ~/.fzf-key-bindings.zsh
source ~/.fzf-completion.zsh

# Start jump
eval "$(autojump shell)"

# Start starship
eval "$(starship init zsh)"

###############################
# Export Environment Variables
###############################
export PATH="/usr/bin/fzf:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/homebrew/bin:$PATH

##############
# Aliases
##############
alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias g='git'
alias ecessh="ssh kalatras@eceubuntu.uwaterloo.ca -Y"
alias mc-ssh="ssh opc@140.238.130.25"
alias ecessh-j="ssh kalatras@eceterm.uwaterloo.ca kalatras@eceubuntu.uwaterloo.ca -Y"
alias etermssh="ssh kalatras@eceterm.uwaterloo.ca -Y"
alias sp="spotify play"
alias spp="spotify pause"
alias spl="spotify play list"
alias sps="spotify status"

