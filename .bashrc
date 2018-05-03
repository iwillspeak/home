# Update the prompt to [user@host:dir] $
PS1="[\[\e[1;31m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\]:\[\e[1;35m\]\W\[\e[m\]] \[\e[0;37m\]\$\[\e[m\] "
export PS1

for completion in /usr/local/etc/bash_completion.d/*
do
	case "$completion" in
		*-completion.bash)
			source "$completion"
		;;
	esac
done

alias gti='git'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
