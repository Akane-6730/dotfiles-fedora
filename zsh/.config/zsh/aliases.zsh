# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# Emacs
alias e="emacs -nw"
alias ec="emacs"
alias em="emacs -Q -nw -l ~/.emacs.d/init-mini.el"
alias sedit='sudo -e'
alias se='sudo -e'

# File listing (eza)
alias ls="eza"
alias l="eza"
alias la="eza -la"
alias ll="eza -l"
alias lt="eza --tree --level=3"
alias t="tree"

# Editors
alias n="nvim"
alias v="vim"

# Git
alias g='git'
alias gi='git init'
alias gs='git status -b'
alias ga='git add .'
alias gc='git commit -m'
alias gca='git commit -am'
alias gp='git push'
alias gpl='git pull'
alias gb='git branch'
alias gbv='git branch -av'
alias gco='git checkout'
alias gl='git log --all --decorate --graph --oneline'

# System
alias ff='fastfetch'
