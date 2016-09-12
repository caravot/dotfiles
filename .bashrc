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

alias wtf='cd /Applications/World\ of\ Warcraft/WTF'
alias chrome='open -a Google\ Chrome '
alias vbash='vi ~/.bashrc'
alias sbash='source ~/.bashrc'
alias tomcat='cd /Applications/tomcat/'
alias ssh-jhu='ssh cravott1@dev8.jhuep.com'
alias jhu='cd /Users/carrie/IdeaProjects/jhu-java-web-782'
alias jhu-push='scp -r ~/IdeaProjects/jhu-java-web-782/web/* cravott1@dev8.jhuep.com:/usr/local/tomcat/webapps/cravott1'
alias jhu-m1='scp -r ~/IdeaProjects/jhu-java-web-782/out/artifacts/cravott1_assignment1/cravott1_assignment1.war cravott1@dev8.jhuep.com:/usr/local/tomcat/webapps/'
#PS1="$GREEN[\w] \n$DARKGRAY($PCT\t$DARKGRAY)-($PCT\u$DARKGRAY)-($PCT!$DARKGRAY)$YELLOW-> $NC"
export PS1="$Cyan\u$NC@$Green\h$NC:[$Purple\w$NC]\$ \[$(tput sgr0)\]"

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


