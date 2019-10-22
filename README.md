# dotfiles

My dotfiles folder containing `.zshrc` and `.vimrc` files. Not included are folders `.oh-my-zsh` and `.vim/plugged`.

## Setting-up a new MacOS

This setup assumes that either you have a new Mac or you've just reinstalled MacOS afresh.

1. On old Mac: Backup installation info. 

        brew bundle dump

    The above command saves a file named `Brewfile` in a folder it was run from. Save this file in a repository (or on a USB stick) for use later.

2. On new Mac: Install command line tools

        sudo xcode-select --install

3. On new Mac: Install homebrew and import `Brewfile`

    Install Homebrew using instructions from [homebrew site][b], and copy `Brewfile` from repository or from USB stick in the home folder (`~`). 

4. On new Mac: Install all items from Brewfile

        brew bundle

[b]: https://brew.sh/ "Homebrew: The missing package manager for macOS (or Linux)"