[ -z "$PS1" ] && return
shopt -s checkwinsize

#PS1='\[\033]0;\u@\h\007\]\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

umask 0027

eval "$(dircolors -b)"
alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias screen='screen -U'

export PATH="$HOME/bin:$PATH"

# For system-specific config (i.e. readmail alias on mailserver)
if [ -f $HOME/.bashrc_local ]; then
	source $HOME/.bashrc_local
fi
