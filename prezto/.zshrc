#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# add this configuration to ~/.zshrc
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

export JAVA_PATH=~/app/jdk1.8.0_102/bin
export PATH=$PATH:$JAVA_PATH


## Vim Stuff
alias eV='vim ~/.vimrc'
alias e='vim'
alias se='sudo vim'
alias eZ='vim ~/.zshrc'
alias seZ='source ~/.zshrc'

## File Extraction
alias extract='dtrx'
alias gz='tar -xzf'
alias xz='tar -xJf'
alias bz='tar -xvjf'
alias bz2='tar -jxvf'


## Git Stuff
alias gits='git status'
alias gitc='git commit -m'
alias gitpom='git push -u origin master'
alias gitpo='git push -u origin'
alias gita='git add'
alias gitb='git branch -a'
alias gitck='git checkout'

