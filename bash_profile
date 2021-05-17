export BASH_SILENCE_DEPRECATION_WARNING=1  # annoying OSX "zsh is default" message

export EDITOR="vi"

# git-aware prompt
source ~/.bash/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT_COMMAND='__git_ps1 "\w" "\$ "'
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto verbose"

source ~/.bash/git-completion.bash

function get_ls_colors() {
    # LS color guide; cached from man page
    # a     black
    # b     red
    # c     green
    # d     brown
    # e     blue
    # f     magenta
    # g     cyan
    # h     light grey
    # A     bold black, usually shows up as dark grey
    # B     bold red
    # C     bold green
    # D     bold brown, usually shows up as yellow
    # E     bold blue
    # F     bold magenta
    # G     bold cyan
    # H     bold light grey; looks like bright white
    # x     default foreground or background
    dir="Gx"
    link="fx"
    socket="cx"
    pipe="dx"
    exec_="Cx"
    block="eg"
    char="ed"
    exec_uid="ab"
    exec_gid="ag"
    dir_sticky="ac"
    dir_no_sticky="ad"

    echo "${dir}${link}${socket}${pipe}${exec_}${block}${char}${exec_uid}${exec_gid}${dir_sticky}${dir_nosticky}"
}
export LSCOLORS="$(get_ls_colors)"

# aliases
alias dc="docker-compose"
alias ls="ls -G"
