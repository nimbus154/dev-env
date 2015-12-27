# set default editor
EDITOR='vim'

# vi mode for shell
bindkey -v

# configure shell for docker
eval "$(docker-machine env default)"

# add a local bin directory
export PATH="$PATH:$HOME/bin"

# default node version
export NODE_VERSION=4
