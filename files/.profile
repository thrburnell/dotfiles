# PATH construction
PATH_GEN="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH_SCALA="/usr/local/share/scala/bin"
PATH_PINTOS="/usr/local/i386-elf-gcc/bin:/usr/local/pintos-utils"
PATH_RBENV="$HOME/.rbenv/bin"

export PATH="$PATH_RBENV:$PATH_PINTOS:$PATH_SCALA:$PATH_GEN"

# Include gnu-sed on path and manpath
export MANPATH=/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH

export EDITOR=vim    # Default editor
export PORT=4567     # localhost default port

# Load in aliases
source ~/.aliases

# Load rbenv
eval "$(rbenv init -)"
