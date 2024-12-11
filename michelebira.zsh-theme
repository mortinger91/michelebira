local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host="%B%{$fg[green]%}%n%{$fg[white]%}@%{$fg[yellow]%}%m%{$reset_color%}"
local user_symbol="%{$fg[red]%}%(!.#.$)%{$reset_color%}"
local current_dir="%B%{$fg[cyan]%}%~%{$reset_color%}"

local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'
if [[ "${plugins[@]}" =~ 'kube-ps1' ]]; then
    local kube_prompt='$(kube_ps1)'
else
    local kube_prompt=''
fi

ZSH_THEME_RVM_PROMPT_OPTIONS="i v g"

local open_bracket="%B%{$fg[green]%}[%{$reset_color%}%b"
local close_bracket="%B%{$fg[green]%}]%{$reset_color%}%b"
local dash="%B%{$fg[green]%}-%{$reset_color%}%b"
local roof="%B%{$fg[green]%}╭%{$reset_color%}%b" 
local floor="%B%{$fg[green]%}╰─%{$reset_color%}%b"
 
PROMPT="${roof}${open_bracket}${user_host}${close_bracket}${dash}${open_bracket}${current_dir}${close_bracket} ${rvm_ruby}${vcs_branch}${venv_prompt}${kube_prompt}
${floor}%B${user_symbol}%b "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}●%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}"

ZSH_THEME_HG_PROMPT_PREFIX="$ZSH_THEME_GIT_PROMPT_PREFIX"
ZSH_THEME_HG_PROMPT_SUFFIX="$ZSH_THEME_GIT_PROMPT_SUFFIX"
ZSH_THEME_HG_PROMPT_DIRTY="$ZSH_THEME_GIT_PROMPT_DIRTY"
ZSH_THEME_HG_PROMPT_CLEAN="$ZSH_THEME_GIT_PROMPT_CLEAN"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="%{$fg[green]%}‹"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="› %{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX="$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX"
ZSH_THEME_VIRTUALENV_SUFFIX="$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX"

export LS_COLORS='di=1;36'
