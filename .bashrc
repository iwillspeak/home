case "$TERM" in
	"dumb")
		PS1="[\u@\h:\W] \$ "
		;;
	"tramp")
		# Emacs TRAMP requires a super basic prompt
		PS1="\$ "
		;;
	*)
		# Update the prompt to [user@host:dir] $
		PS1="[\[\e[1;31m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\]:\[\e[1;35m\]\W\[\e[m\]] \[\e[0;37m\]\$\[\e[m\] "
		;;
esac
export PS1

# Silence the deprecation warning in macOS
BASH_SILENCE_DEPRECATION_WARNING=1
export BASH_SILENCE_DEPRECATION_WARNING

# Ignore duplicate commands and commands starting with a space from the history
HISTCONTROL=ignoreboth
export HISTCONTROL

for completion in /usr/local/etc/bash_completion.d/*
do
	case "$completion" in
		*-completion.bash)
			source "$completion"
		;;
	esac
done

# Alias Chicken Scheme to avoid a clash with the C# compiler
if [ -d "/usr/local/Cellar/chicken/5.2.0/bin/" ]
then
	alias chickeni="/usr/local/Cellar/chicken/5.2.0/bin/csi"
	alias chickenc="/usr/local/Cellar/chicken/5.2.0/bin/csc"
fi

# Completions for NUKEBuild, if the global tool is installed
if command -v nuke >/dev/null 2>&1
then
	_nuke_bash_complete()
	{
		local word=${COMP_WORDS[COMP_CWORD]}
		local completions="$(nuke :complete "${COMP_LINE}")"
		COMPREPLY=( $(compgen -W "$completions" -- "$word") )
	}
	complete -f -F _nuke_bash_complete nuke
fi

alias gti='git'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
