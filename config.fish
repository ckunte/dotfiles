if status is-interactive
    # abbreviations
    abbr cp 'cp -i'
    abbr df 'df -h'
    abbr du 'du -h'
    abbr fl 'rg --files | fzf'
    abbr hk 'make --file=~/scripts/hkp/hkp.make'
    abbr mv 'mv -i'
    abbr rm 'rm -i'
    abbr sp 'make --file=~/Sites/sp.make'
    abbr week 'date +%V'
    # functions
    function subl
        /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $argv
    end
    function smerge
        /Applications/Sublime\ Merge.app/Contents/SharedSupport/bin/smerge $argv
    end
end
