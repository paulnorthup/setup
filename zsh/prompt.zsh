# Global Options
setopt prompt_subst
autoload colors zsh/terminfo
colors
autoload -U colors && colors # Enable colors in prompt

# Git Stuff
source $ZSH_CUSTOM/git-prompt.zsh

set_prompt() {
  git_prompt_string() {
    local git_where="$(parse_git_branch)"
    [ -n "$git_where" ] && echo "$GIT_PROMPT_SYMBOL$(parse_git_state)$GIT_PROMPT_PREFIX%{$fg[yellow]%}${git_where#(refs/heads/|tags/)}$GIT_PROMPT_SUFFIX"
  }

  function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
  }

  myjobs=()
  for a (${(k)jobstates})
  {j=$jobstates[$a];i="${${(@s,:,)j}[2]}"
  myjobs+=($a${i//[^+-]/})}
  myjobs=${(j:,:)myjobs}

  rehash

  RPS1='$(virtualenv_info) $(git_prompt_string) $myjobs'
  PS1='
%{$fg[green]%}%T%} %{$fg[yellow]%}%/
%{$fg[cyan]%}%c% %{$fg_bold[red]%} ➜ %{$reset_color%}'
}

precmd () {
set_prompt
}
