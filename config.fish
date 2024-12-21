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
    # Get latest release of a software from GitHub
    function glr \
        --argument-names user_repo
        curl \
            --silent \
            "https://api.github.com/repos/$user_repo/releases/latest" \
        | string match --regex '"tag_name": "\K.*?(?=")'
    end
    #function subl
    #    /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $argv
    #end
end
