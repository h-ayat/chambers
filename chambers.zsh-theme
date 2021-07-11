#!/usr/bin/env zsh 
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

#autoload -U add-zsh-hook
ROOT_ICON_COLOR=$FG[111]
MACHINE_NAME_COLOR=$fg[green]
PROMPT_SUCCESS_COLOR=$FG[103]
PROMPT_FAILURE_COLOR=$FG[124]
PROMPT_VCS_INFO_COLOR=$FG[242]
#PROMPT_VCS_INFO_COLOR=$FG[GREEN]
PROMPT_PROMPT=$fg[green]
GIT_DIRTY_COLOR=$FG[124]
GIT_CLEAN_COLOR=$FG[148]
GIT_PROMPT_INFO=$FG[148]

SAMURAI_COLOR="%{$fg[red]%}"
SAMURAI="${SAMURAI_COLOR}侍"


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"

ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[148]%}✚%{$rset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[103]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[208]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[104]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[103]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[226]%}✭%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$FG[225]%}"
#ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$WHITE%}"


# Hash
ROOT_ICON="# "
if [[ $EUID -ne 0 ]] ; then
	ROOT_ICON=""
fi

PROMPT='
%{$ROOT_ICON_COLOR%}$ROOT_ICON%{$reset_color%}%{$MACHINE_NAME_COLOR%}CHAMBERS %{$reset_color%}%{$fg[blue]%}λ %{$reset_color%}%{$FG[208]%}%~%{$reset_color%} %{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status) %{$fg_bold[102]%}$(git_prompt_short_sha) ⌚ %{$fg_bold[yellow]%}%*%{$reset_color%}
${SAMURAI}%{$reset_color%}%{$PROMPT_PROMPT%}ᐅ %{$reset_color%} '

#RPS1="${return_code}"

