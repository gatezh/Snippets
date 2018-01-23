##########################
# LAST UPDATE 2018-01-22 #
##########################

# Enable bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Setting PATH for SublimeText editor
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

# Enable tab completion
# from Udacity Git course
# source /PATH-TO-GIT-COMPLETION/git-completion.bash

# colors!
green="\[\033[0;32m\]"
#blue="\[\033[0;34m\]"
red="\[\033[0;31m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

# Change command prompt
# https://www.git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash
source .git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$reset\u$green\$(__git_ps1)$red \W $ $reset"

export PATH="/usr/local/sbin:$PATH"

# Ruby env
# eval "$(rbenv init -)"

# Aliases
alias ..="cd .."
alias l="ls -lah"
alias c="clear"
alias h="history"
alias mkdir="mkdir -p"

# iTerm 2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
