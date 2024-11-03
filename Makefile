.PHONY: dotfiles
dotfiles:
	@echo -n 'Copying dotfiles to home folder...'
	@cp ${PWD}/config.fish ${HOME}/.config/fish/config.fish
	@cp ${PWD}/.vimrc ${HOME}/.vimrc
	@cp ${PWD}/.gitignore ${HOME}/.gitignore
	@cp ${PWD}/.gitconfig ${HOME}/.gitconfig
	@echo 'done.'
