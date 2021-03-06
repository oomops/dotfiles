if [ -n $MY_RC ]; then
	# load oh-my-zsh
	[[ -f ~/.oh-my-zsh.rc ]] && . ~/.oh-my-zsh.rc

	# load env
	if [ -n $MY_ENV ]; then
		[[ -f ~/.zshenv ]] && . ~/.zshenv
	fi

	# load aliases
	[[ -f ~/.aliases ]] && . ~/.aliases
	
	# brew install autojump ...at first
	if [ `uname` = "Darwin" ]; then
		[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
	fi
	
	export MY_RC="done"
fi
