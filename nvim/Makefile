.PHONY: init
init:
	mkdir -p ${HOME}/.config && \
		ln -sfnv ${PWD} ${HOME}/.config/nvim

.PHONY: clean
clean:
	unlink ${HOME}/.config/nvim || true
