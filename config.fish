if status is-interactive
    fzf --fish | source
    # rsync with my most used flags
    abbr rsync rsync -auvz --delete --exclude $HOME/excl.txt
    # Screenshot focused draw area
    abbr ssa grim -g \"\$\(slurp\)\"
    # Download audio (append a path or URL at the end)
    abbr ya yt-dlp -f \"bestaudio[ext=m4a]\"  
    # aliases
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
    # Get the latest release version of a GitHub repo.,
    # e.g. glr "ckunte/tce"
    function glr \
        --argument-names user_repo
        curl \
            --silent \
            "https://api.github.com/repos/$user_repo/releases/latest" \
        | string match --regex '"tag_name": "\K.*?(?=")'
    end
end
# uv
fish_add_path "/home/ckunte/.local/bin"
