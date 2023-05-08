.PHONY: init
init:
	mkdir -p ${HOME}/.config && \
		ln -sfnv ${PWD}/com.googlecode.iterm2.plist ${HOME}/.config/iterm2/com.googlecode.iterm2.plist

.PHONY: clean
clean:
	unlink ${HOME}/.config/iterm2/com.googlecode.iterm2.plist || true
