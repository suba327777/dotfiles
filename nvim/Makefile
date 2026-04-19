.PHONY: init
init:
	mkdir -p ${HOME}/.config
	ln -sfnv ${PWD} ${HOME}/.config/nvim
	@echo "Linked nvim config. Next, run 'nvim' to install plugins automatically via lazy.nvim."

.PHONY: clean-all
clean-all:
	@echo "Removing nvim config link and all installed plugins/cache..."
	unlink ${HOME}/.config/nvim || true
	rm -rf ${HOME}/.local/share/nvim
	rm -rf ${HOME}/.local/state/nvim
	rm -rf ${HOME}/.cache/nvim

.PHONY: clean
clean:
	unlink ${HOME}/.config/nvim || true
