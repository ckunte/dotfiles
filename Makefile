.PHONY: link
link:
	@echo -n 'Linking dotfiles to home...'
	@ln -s ${PWD}/.zshrc ${HOME}/.zshrc
	@ln -s ${PWD}/.vim ${HOME}/.vim
	@ln -s ${PWD}/.vimrc ${HOME}/.vimrc
	@ln -s ${PWD} ${HOME}/dotfiles
	@echo 'done.'
