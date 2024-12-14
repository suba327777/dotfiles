.PHONY: init
init:
	@echo "Creating symlinks for Git dotfiles..."
	ln -svf ${PWD}/.gitconfig ${HOME}/.gitconfig
	ln -svf ${PWD}/.gitignore ${HOME}/.gitignore

.PHONY: clean
clean:
	@echo "Removing Git dotfiles symlinks..."
	unlink ${HOME}/.gitconfig || true
	unlink ${HOME}/.gitignore || true
