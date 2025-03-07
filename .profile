# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <https://creativecommons.org/publicdomain/zero/1.0/>. 

# ~/.profile: executed by the command interpreter for login shells.

# The copy in your home directory (~/.profile) is yours, please
# feel free to customise it to create a shell
# environment to your liking.  If you feel a change
# would be benificial to all, please feel free to send
# a patch to the msys2 mailing list.

# User dependent .profile file

# Set user-defined locale
export LANG=$(locale -uU)

# This file is not read by bash(1) if ~/.bash_profile or ~/.bash_login
# exists.
#
# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi

#Colors
red='\033[31m'
blue='\033[34m'
white='\033[37m'
green='\033[32m'
black='\033[30m'
yellow='\033[0;33m'
bmagenta='\033[45m'
bold='\033[1m'
reset='\033[0m'
tremor='\033[5m'

echo -e "\a"
echo "----------------------------------------"
echo -e "${bold}*          SUCCESSFUL                  *"
echo -e "*        INITIALIZATION                *${reset}"
echo "________________________________________"
echo -e ${black}
pwd
whoami
echo -e "Arquitecture: ${yellow} $(uname -m) ${black}"
echo -e "Distribution name: ${yellow} $(uname -o) ${black}"
echo -e "Kernel Date: ${yellow} $(uname -v) ${black}"
echo -e "Kernel Version: ${yellow} $(uname -r) ${black}"
echo -e ${reset}

echo -e ${green}
cal
echo -e ${reset}
echo "_________________________________________"

#export LS_COLORS
#LS_COLORS="no=1:di=1;38;2;66;133;244:ln=09;32:pi=40;32:so=01;35:bd=40;33;01:cd=34;33;01:or=34;33;01:ex=01;38;2;149;1>
#export LS_COLORS
#alias ls='ls -G'
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad
export TERM=xterm-color
# BSD ls
export LSCOLOR='exfxcxdxbxegedabagacad'
# GNU ls and others (for example, tree)
export LS_COLORS='di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:'
echo -ne '\e]12;#00FF00\a'  # Green cursor
#echo -ne '\e]12;#40FF40'    #Bold Green Cursor
#echo -ne '\e]12;#FF4040\a'  #Bold Red Cursor

alias cdir='cd "${_%/*}"'

if [ "$(uname -s)" = 'MINGW64_NT-10.0-22631' ]; then
  # GNU ls
  alias ll='ls --color=auto -laF'
else
  # Assume BSD ls
  alias ll='ls -G -laF'
fi
export GREP_OPTIONS='--color=auto'

echo ""
stty -g
echo "----"
ll
echo "----"

echo -e "${bold}${black}Variables Loaded: ${reset}"
echo -e "${red}emacs"
echo -e "emacs29"
echo -e "tcl"
echo -e "wish"
echo -e "py311"
echo -e "ruby"
echo -e "rgem"
echo -e "frtr"
echo -e "${tremor}Call them by using $ argument for env. variables."
echo -e "${reset}"

export emacs="/mingw64/bin/emacs.exe"
export emacs29_4="/mingw64/bin/emacs-29.4.exe"
export tcl="/mingw64/bin/tclsh.exe"
export wish="/mingw64/bin/wish.exe"
export py311="/mingw64/bin/python3.11.exe"
export ruby="/ucrt64/bin/ruby.exe"
export rgem="/ucrt64/bin/gem.cmd"
export frtr="/mingw64/bin/gfortran.exe"

export PS1="[$(date +"%a %b %d | %T")]\n\u@\h [\$(pwd):$(ls -F |grep -v / | wc -l)]> "


#Source:
#https://www.ionos.es/digitalguide/servidores/configuracion/linux-echo/
#https://stackoverflow.com/questions/793483/unable-to-put-colors-for-ls-by-ls-options#:~:text=For%20ls%20with%20colors%20to%20work%20you%20must,ls%3D%27ls%20-G%27%20export%20CLICOLOR%3D1%20export%20LSCOLORS%3DExFxCxDxBxegedabagacad%20export%20TERM%3Dxterm-color
#https://gist.github.com/lomedil/41b739a74b481c4b0a47fca09f42bea3
#https://www.gnu.org/software/bash/manual/html_node/Command-Substitution.html
#https://apuntes.de/linux-certificacion-lpi/el-comando-uname/#gsc.tab=0
#https://www.pluralsight.com/resources/blog/cloud/conditions-in-bash-scripting-if-statements
