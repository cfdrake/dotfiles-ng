## ZSH Basics
setopt auto_cd
setopt no_case_glob

## ZSH History
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.zsh_history
setopt extended_history
setopt hist_ignore_dups
setopt inc_append_history
setopt share_history

## ZSH Prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '(%b) '

function precmd () {
  vcs_info
}

export PROMPT="%B%F{240}%1~ \$vcs_info_msg_0_%f%b%# "

## Exports
export PATH="$PATH:~/bin"

export CLICOLOR="1"
export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"

export EDITOR="vim"
export PAGER="less"

## Aliases
alias df="df -h"
alias du="du -h"
alias l="ls -l"
alias la="ls -la"
alias ll="ls -l"
alias ls="ls -l"
alias lrt="ls -lrt"
alias sudo="sudo "
alias t="tree -C"
alias ta="tree -Ca -I .git"
alias timestamp="date +%s"
alias v="$EDITOR"
alias vv="open -a /Applications/MacVim.app"
alias vw="vv ~/vimwiki/index.wiki"

alias g="git"
alias ga="git add"
alias gb="git branch"
alias gbc="git branch --show-current"
alias gc="git commit"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gd="git diff"
alias gh="git rev-parse HEAD"
alias gca="git commit -a"
alias gl="git pull"
alias glo="git log"
alias gm="git merge"
alias gp="git push"
alias gst="git status"

alias c="carthage"
alias f="bundle exec fastlane"
alias xcp="open *.xcodeproj"
alias xcw="open *.xcworkspace"

alias h="hugo"
alias hs="hugo server -D"

## Functions
function finder() {
  open .
}

function trash() {
  mv $@ ~/.Trash
}

## Local
if [[ -f ~/.zshrc.local ]]; then
  source ~/.zshrc.local
fi
