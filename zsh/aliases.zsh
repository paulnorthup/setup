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
