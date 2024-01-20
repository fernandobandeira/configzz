set fish_greeting

alias ls="eza --icons"
alias ll="ls -l --git --icons"
alias la="eza -a --icons"
alias lla="eza -la --git --icons"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use default > /dev/null 2>&1

starship init fish | source

