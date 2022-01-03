#PROMPT="%(?:%{$fg_bold[red]%}[%{$fg_bold[cyan]%}%n%{$fg_bold[green]%}@%{$fg_bold[white]%}%m%{$fg_bold[red]%}]%{$fg_bold[green]%}$:%{$fg_bold[red]%}$)"
# COLOR SPECIFIC SCHEME FOR MEDUSA RICE WITH DJANCOEG COLORS.
# WILL NOT DISPLAY PROPERLY ON SYSTEMS WITH DIFFERENT COLORSCHEME

DIR_SUFFIX=' %{$fg[red]%}%c%{$reset_color%}'
GIT_SUFFIX=' $(git_prompt_info)'
MAIN="%{$fg_bold[red]%}[%{$fg_bold[blue]%}%n%{$fg_bold[cyan]%}@%{$fg_bold[white]%}%m$DIR_SUFFIX%{$fg_bold[red]%}]"
GREEN="%{$fg_bold[green]%}$%{$fg_no_bold[white]%}"
RED="%{$fg_bold[red]%}$%{$fg_no_bold[white]%}"
PROMPT="%(?:$MAIN$GREEN:$MAIN$RED)"
PROMPT+="$GIT_SUFFIX"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
