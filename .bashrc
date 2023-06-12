#
# ~/.bashrc
#

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
alias cp="/usr/bin/cp -iv"
alias mkdir="/usr/bin/mkdir -v"
alias mv="/usr/bin/mv -iv"
alias rm="/usr/bin/rm -iv"
#alias tree="/usr/bin/tree -F -L 2"
alias tree="/usr/bin/tree -F -I '__pycache__|venv|lib*|z-files' -L 4"
alias vi="/usr/bin/vim"
alias view="/usr/bin/vim -R"

