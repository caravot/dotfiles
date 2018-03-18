if [ -f /etc/bashrc ]; then
    . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

# Normal Colors
Black='\e[0;30m'        # Black
Red='\e[0;31m'          # Red
Green='\e[0;32m'        # Green
Yellow='\e[0;33m'       # Yellow
Blue='\e[0;34m'         # Blue
Purple='\e[0;35m'       # Purple
Cyan='\e[0;36m'         # Cyan
White='\e[0;37m'        # White

# Bold
BBlack='\e[1;30m'       # Black
BRed='\e[1;31m'         # Red
BGreen='\e[1;32m'       # Green
BYellow='\e[1;33m'      # Yellow
BBlue='\e[1;34m'        # Blue
BPurple='\e[1;35m'      # Purple
BCyan='\e[1;36m'        # Cyan
BWhite='\e[1;37m'       # White

NC="\e[m"               # Color Reset

alias ll='ls -l'
alias lla='ls -al'
alias c='clear'
alias x='exit'

alias vi='vim'
alias wtf='cd /Applications/World\ of\ Warcraft/WTF'
alias chrome='open -a Google\ Chrome '
alias vbash='vi ~/.bashrc'
alias sbash='source ~/.bashrc'
alias tomcat='cd /Applications/tomcat/'
alias sshjhu='ssh cravott1@web6.jhuep.com'
alias jc='cd /Users/carrie/Documents/Projects/en.605.784_javaee/'

#PS1="$GREEN[\w] \n$DARKGRAY($PCT\t$DARKGRAY)-($PCT\u$DARKGRAY)-($PCT!$DARKGRAY)$YELLOW-> $NC"

# load classpath from weblogc server
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
/Users/carrie/Oracle/wls12.2.1.2/user_projects/domains/car_domain/bin/setDomainEnv.sh

export PS1="$Cyan\u$NC@$Green\h$NC:[$Purple\w$NC]\$ \[$(tput sgr0)\]"
export RAILS_ENV=development

export WLS_BIN=/Users/carrie/Oracle/wls12.2.1.2/user_projects/domains/car_domain/bin
export WLS_JAR=/Users/carrie/Oracle/wls12.2.1.2/wlserver/server/lib/weblogic.jar
export DERBY_HOME=/usr/local/Cellar/derby/10.14.1.0
export M2_HOME=/Applications/maven/
export M2=$M2_HOME/bin
export PATH=$M2:$DERBY_HOME/bin:$WLS_BIN:$WLS_JAR:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

# nodejs /usr/local/bin/npm
#eval "$(rbenv init -)"

export ES=/usr/local/etc/elasticsearch
export KB=/usr/local/etc/kibana
export LS=/usr/local/bin/logstash

function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}
