# applicable to all machines and uses
alias ll='ls -l'
alias la='ls -a'
alias lt='ls --human-readable --size -1 -S --classify'
alias left='ls -t -1'
alias count='find . -type f | wc -l'

# Arch and family
alias pacup='sudo pacman -Syu'

alias shutdown='sudo systemctl shutdown'
alias reboot='sudo systemctl reboot'
alias cls='clear'

# requires setting up the firefox profile first
alias workff='firefox --new-instance -P work'

# docker related
alias docker='sudo docker'
alias dkr='sudo docker'
alias dkrcmp='sudo docker-compose'
