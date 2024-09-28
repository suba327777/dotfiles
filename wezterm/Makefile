.PHONY: init
init:
	mkdir -p ${HOME}/.config && \
		ln -sfnv ${PWD}/.wezterm.lua ${HOME}/.wezterm.lua

.PHONY: clean
clean:
	unlink ${HOME}/.wezterm.lua || true
