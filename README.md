# dotfiles

These are the files that reside in my home folder.

## Setting a new Mac up

This setup assumes that you have either a new Mac or just re-installed MacOS afresh.

1. Copy all the files from this repo to the home folder (`~/`)
2. Install command line tools: `sudo xcode-select --install`
3. Install [Homebrew] and run `brew bundle install` from `~/`

    The above requires `Brewfile`, which can either be created afresh or saved from another computer using `brew bundle dump`. A copy of `Brewfile` is included in this repository.

4. Install additional LaTeX packages from the [templates] repository
5. Install [vim-plug]
6. Install housekeeping scripts from [hkp] repository

[Homebrew]: https://brew.sh "The Missing Package Manager for macOS (or Linux)"
[templates]: https://github.com/ckunte/templates
[vim-plug]: https://github.com/junegunn/vim-plug
[hkp]: https://github.com/ckunte/hkp