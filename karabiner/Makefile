.PHONY: init
init:
	mkdir -pv ${HOME}/.config && \
		ln -sfnv ${PWD} ${HOME}/.config/karabiner

.PHONY: clean
clean:
	unlink ${HOME}/.config/karabiner || true
