# dotfiles

These are the files that reside in my home folder.

## Setting a new Mac up

This setup assumes that you have either a new Mac or just re-installed MacOS afresh.

1. Copy all the files from this repo to the home folder (`~/`)
2. Install command line tools: `sudo xcode-select --install`
3. Install [Homebrew] and run `brew bundle install` from `~/`
4. Install [additional LaTeX packages][templates]
5. Install [vim-plug]
6. Install [housekeeping scripts][hkp]
7. Install [oh-my-zsh]

Step 3 requires `Brewfile`, which can either be created afresh or saved from another computer using `brew bundle dump`. (`Brewfile` is included in this repository.)

[Homebrew]: https://brew.sh "The Missing Package Manager for macOS (or Linux)"
[templates]: https://github.com/ckunte/templates
[vim-plug]: https://github.com/junegunn/vim-plug
[hkp]: https://github.com/ckunte/hkp
[oh-my-zsh]: https://github.com/ohmyzsh/ohmyzsh
