# Spencer Krum a.k.a nibalizer's environment
# Specifically staying within bash here

# Check for an interactive session
[ -z "$PS1" ] && return

# Use Vim
export EDITOR=`which vim`

# All the cool kids are using POP3
MAIL=/var/spool/mail/nibz && export MAIL

# Sometimes we need to know where the awesome is
if [ -d $HOME/local/bin ]; then
  SCRIPTS=$HOME/local/bin && export SCRIPTS
fi

# Dat unicode
if [ -e /usr/share/terminfo/r/rxvt-256color ]; then
  export TERM='rxvt-256color'
else
  export TERM='rxvt-color'
fi


# Set Lang
if [ `uname -s` = "SunOS" ] ; then
  export LANG="C"
else
  export LANG="en_US.UTF-8"
fi

# Do I have a very custom ~local I've put things in?

if [ -d $HOME/local ]; then
  export PATH=${HOME}/local/bin:${HOME}/local/sbin:${PATH}
  export MANPATH=${HOME}/local/share/man:${MANPATH}
fi


# The Dynamic Languages: Perl, Python, Ruby

# RUBY
# Manage ruby through rvm
# Install rvm with
# \curl -sSL https://get.rvm.io | bash -s -- --ignore-dotfiles

if [ -d $HOME/.rvm/bin ]; then
  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

# PERL
# Manage perl with perlbrew


# Everything done often should be short and fast

alias ta='tmux attach'


#feel good aliases 
#there are really old
#kept here becuase the past is awesome
alias xkcd='konqueror &'
alias kb='. /home/nibz/Documents/Scripts/kb.sh'
#alias win='. /home/nibz/Documents/Scripts/win.sh'
alias win=$SCRIPTS/win.sh
alias wifi='. /home/nibz/Documents/Scripts/newwireless_script.sh'
alias bashrc='vim /home/nibz/.bashrc && source /home/nibz/.bashrc'
alias xorg='. /home/nibz/Documents/Scripts/xorg.sh'
alias pgc='ping google.com'
alias goodnight='. $SCRIPTS/sleep.sh'
alias rtfm='man'

alias ls='ls --color=auto'

PS1='[\u@\h \W]\$ '


# There may be local confiugration to soruce
[ -f ~/.bashrc.local ] && source ~/.bashrc.local

