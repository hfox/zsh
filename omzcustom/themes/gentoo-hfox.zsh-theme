function prompt_char {
	if [ $UID -eq 0 ]; then echo "#"; else echo %; fi
}

local return_code="%(?..%{$fg[red]%}%?↵%{$reset_color%})"

PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[green]%}%n@)%m %{$fg_bold[blue]%}%(!.%1~.%~) %_%#%{$reset_color%} '
RPS1='${return_code} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}±%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="⚡"
