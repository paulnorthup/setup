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

# Prompt
source $ZSH_CUSTOM/prompt.zsh

# Aliases
source $ZSH_CUSTOM/aliases.zsh

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

# Python
export RACK_ENV=local

# Where startupschool.com code will live (top-level directory for all)
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects

# Tell virtualenv to use the new hotness: Distribute
export VIRTUALENV_DISTRIBUTE=true
export VIRTUALENV_PYTHON=/usr/local/bin/python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python

# Source the virtualenvwrapper startup script
source /usr/local/bin/virtualenvwrapper.sh

# SI specific
export DJANGO_DEBUG='ON'
export DJANGO_APP_APP_SECRET='derpderpderp704i^son7c^tqnxmg%ir%t7z5c8p_69k4wwo^y'
export DJANGO_SETTINGS_MODULE='settings.local'
#export DJANGO_LOGGING='ON'

bindkey -v

# Games
export PATH="/usr/games/bin:$PATH"

fpath=($fpath /usr/local/share/doc/task/scripts/zsh)
autoload -Uz compinit
compinit

# Postgres.app in path
PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

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

# add jules' github app key things
export CLIENT_ID=8eccc151c81fe5593562
export CLIENT_SECRET=85d12b412aaccbf21bdd79e6c939a777d1751131

# Pelican Sheeeeit
export DEVLOG_THEME_LOCATION='/Users/paul/projects/devlog_theme'

#Suggestions
source ~/.zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically
 zle-line-init() {
     zle autosuggest-start
     }
zle -N zle-line-init

 # use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
 # zsh-autosuggestions is designed to be unobtrusive)
 bindkey '^T' autosuggest-toggle
 bindkey '^f' vi-forward-blank-word

export AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=3'

export PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# The next line updates PATH for the Google Cloud SDK.
export PATH=$PATH:/Users/paul/google-cloud-sdk/bin
