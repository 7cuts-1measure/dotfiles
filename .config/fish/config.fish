source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
#    fastfetch --logo CachyOS_small
end

# cannot start with this option :(
#keychain --eval /home/kapiuser/.ssh/id_ed25519


alias tree='eza --tree --icons'
alias ls='eza --icons --oneline'
alias la='eza --icons --oneline -a'
alias cls='clear'
# alias micro='nvim'

