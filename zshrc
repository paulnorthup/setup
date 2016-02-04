# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
fpath=(/usr/local/share/zsh-completions $fpath)

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/heroku/bin:/Users/paul/.rvm/gems/ruby-2.0.0-p0/bin:/Users/paul/.rvm/gems/ruby-2.0.0-p0@global/bin:/Users/paul/.rvm/rubies/ruby-2.0.0-p0/bin:/Users/paul/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Users/paul/drush:/Users/paul/.rvm/bin:/usr/local/share/npm/bin:/Users/paul/bin:/usr/local/share/python

# Editor
export EDITOR='vim'

#Drush
export PATH=$PATH:/Users/paul/drush

# NPM to path
PATH=$PATH:/usr/local/share/npm/bin

# user/bin to path
PATH=$PATH:~/bin

# Add scripts dir to path
PATH=$PATH:~/scripts

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

fpath=($fpath /usr/local/share/doc/task/scripts/zsh)
autoload -Uz compinit
compinit

# bookmarks
export MARKPATH=$HOME/.marks
function jump { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark { 
    rm -i "$MARKPATH/$1"
}
function marks {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

# Enable autosuggestions automatically
zle -N zle-line-init

 # use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
 # zsh-autosuggestions is designed to be unobtrusive)
 bindkey '^T' autosuggest-toggle
 bindkey '^f' vi-forward-blank-word

export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=3'

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#MYH Aliases
alias morning='bundle install && rake update:env && rake fixtures:challenge'
alias dcp='cd ~/code/dcp'
alias dcm='cd ~/code/dcm'
alias wbt='cd ~/code/wbt'

## Aliases
# For Easy Editing
alias zconf='vim ~/.zshrc && source ~/.zshrc'
alias bashconf='vim ~/.bash_profile'
alias sshconf='vim ~/.ssh/config'
alias vimconf='vim ~/.vimrc'
force_colored_prompt=yes
color_prompt=yes

# LS
alias ll='ls -alp'
alias ls='ls -G'
alias sl='sl'

#Eject all disks
alias eject='osascript -e "tell application \"Finder\" to eject (every disk whose ejectable is true)"'

# Open Apps
alias shop='open -b com.adobe.Photoshop'

# Git Stuff
alias gs='git status'
alias gc='git commit'
alias gcam='git commit -am'
alias gp='git push'

#Navigation shortcuts
alias notes='vim ~/notes'

# Remove spaces and swap with underscores in current directory
alias rmspaces='rename "s/ /_/g" *'

# Navigation
alias si='~/projects/startupschool_py'
alias rampup='~/projects/startupschool_py/rampup'
alias nyc='~/projects/startupschool_py/newyork'
alias bos='~/projects/startupschool_py/boston'

# PS Aux
alias psag='ps aux | grep'

# Python
alias rs='python manage.py runserver'
alias wo='workon'

# Vmail

# TaskWarrior
alias taskconf='vim ~/.taskrc'
alias t='task'

# KeyRemap
alias kr='/Applications/KeyRemap4MacBook.app/Contents/Applications/KeyRemap4MacBook_cli.app/Contents/MacOS/KeyRemap4MacBook_cli'

# Bower
alias b='bower'
alias bi='bower install'

## Prompt
# Global Options
setopt prompt_subst
autoload colors zsh/terminfo
colors
autoload -U colors && colors # Enable colors in prompt

## Git Stuff
# Modify the colors and symbols in these variables as desired.
GIT_PROMPT_SYMBOL="%{$fg[blue]%}±"
GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$reset_color%}"
GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
GIT_PROMPT_AHEAD="%{$fg[red]%}ANUM%{$reset_color%}"
GIT_PROMPT_BEHIND="%{$fg[cyan]%}BNUM%{$reset_color%}"
GIT_PROMPT_MERGING="%{$fg_bold[magenta]%}⚡︎%{$reset_color%}"
GIT_PROMPT_UNTRACKED="%{$fg_bold[red]%}●%{$reset_color%}"
GIT_PROMPT_MODIFIED="%{$fg_bold[yellow]%}●%{$reset_color%}"
GIT_PROMPT_STAGED="%{$fg_bold[green]%}●%{$reset_color%}"

# Show Git branch/tag, or name-rev if on detached head
parse_git_branch() {
  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}

# Show different symbols as appropriate for various Git repository states
parse_git_state() {

  # Compose this value via multiple conditional appends.
  local GIT_STATE=""

  local NUM_AHEAD="$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_AHEAD" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
  fi

  local NUM_BEHIND="$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')"
  if [ "$NUM_BEHIND" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
  fi

  local GIT_DIR="$(git rev-parse --git-dir 2> /dev/null)"
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi

  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
  fi

  if ! git diff --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
  fi

  if ! git diff --cached --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
  fi

  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi

}

# If inside a Git repository, print its branch and state
git_prompt_string() {
  local git_where="$(parse_git_branch)"
  [ -n "$git_where" ] && echo "$GIT_PROMPT_SYMBOL$(parse_git_state)$GIT_PROMPT_PREFIX%{$fg[yellow]%}${git_where#(refs/heads/|tags/)}$GIT_PROMPT_SUFFIX"
}

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
