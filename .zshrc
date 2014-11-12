export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

autoload -Uz colors
colors

autoload -U compinit
compinit

# aliases
alias ls='ls -F -a'
alias ll='ls -l'

alias g=git
alias ga='git add'
alias gc='git commit'
alias gca='git commit --amend'
alias gs='git status'
alias gb='git branch -a'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git l'

alias v=vagrant
alias e=emacs


bindkey -e

setopt print_eight_bit

setopt no_beep

# history
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt share_history

# pushd
setopt auto_pushd
setopt pushd_ignore_dups

########################################


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$HOME/.cask/bin:$PATH"


npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir


# load under ~/.zsh/
ZSHHOME="${HOME}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
    for i in $ZSHHOME/*; do
        [[ ${i##*/} = *.sh ]] &&
        [ \( -f $i -o -h $i \) -a -r $i ] && . $i
    done
fi