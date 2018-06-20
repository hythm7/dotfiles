set -o vi

export PATH=$PATH:$HOME/bin

export TERM=rxvt-unicode-256color
export PS1="\e[0;36m\u@\h$ \e[m"
export PATH=~/.rakudobrew/bin:$PATH

alias ls='ls -h --color'
# -> Prevents accidentally clobbering files.

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ll='ls -l'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
#alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

# git aliases
alias go='git checkout'
alias ga='git add'
alias gb='git branch'
alias gs='git status'
alias gc='git commit'

if ls /path/to/your/files* &> /dev/null; then
	. ~/.fonts/*.sh
fi

# MCM
#alias commcell='javaws ~/bin/mcm/CommCell.jnlp'
alias crow='ssh crow'
alias drop='ssh dropoff'

#-------------------------------------------------------------
# Tailoring 'less'
#-------------------------------------------------------------
export LESS=eFRX
#alias more='less'
#export PAGER=less
#export LESSCHARSET='latin1'
#export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
                # Use this if lesspipe.sh exists.
#export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
#:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

