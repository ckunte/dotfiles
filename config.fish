if status is-interactive
    fzf --fish | source
    # abbreviations
    alias vim nvim
    alias cp='cp -i'
    alias df='df -h'
    alias du='du -h'
    alias fl='rg --files | fzf'
    alias hk='make --file=~/scripts/hkp/hkp.make'
    alias mv='mv -i'
    alias rm='rm -i'
    alias sp="make --file=~/Sites/sp.make"
    alias wk='date +%V'
    alias sl='dm-tool lock'
    alias fl='rg --files | fzf'
    alias cat='cat | fold -s -w 80'
    #function subl
    #    /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $argv
    #end
end
