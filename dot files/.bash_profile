##########################
# LAST UPDATE 2018-11-26 #
##########################

# Colors
# must be before "Change command prompt"
green="\[\033[0;32m\]"
#blue="\[\033[0;34m\]"
red="\[\033[0;31m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"


# Change command prompt
# https://www.git-scm.com/book/en/v2/Appendix-A%3A-Git-in-Other-Environments-Git-in-Bash
# NOTE: the latest git should be installed (via brew for example)
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$reset\u$green\$(__git_ps1)$red \W $ $reset"


# bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# Import bash aliases (if file exists)
if [ -f ~/.bash-aliases ]; then
. ~/.bash-aliases
fi


# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# Setting PATH for SublimeText editor
export PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin

# Setting PATH for the newer version of sqlite (brew dependency)
export PATH=/usr/local/opt/sqlite/bin:$PATH

# Setting PATH for Bro network monitor
export PATH=/usr/local/bro/bin:$PATH

# Set NVM directory
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/sergii/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/sergii/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sergii/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/sergii/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
