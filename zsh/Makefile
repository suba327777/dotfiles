ENABLED := ${PWD}/enabled

.PHONY: init
init:
	ln -svf ${PWD}/.zshrc ${HOME}/.zshrc
	ln -svf ${PWD}/.zshenv ${HOME}/.zshenv
	ln -svf ${PWD}/.zprofile ${HOME}/.zprofile

.PHONY: clean
clean:
	unlink ${HOME}/.zshrc || true
