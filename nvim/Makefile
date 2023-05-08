.PHONY: init
init:
	mkdir -p ${HOME}/.config && \
		ln -sfnv ${PWD} ${HOME}/.config/nvim

.PHONY: install-packer
install-packer:
	@if [ ! -d "${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim" ]; then \
		git clone --depth 1 https://github.com/wbthomason/packer.nvim \
			${HOME}/.local/share/nvim/site/pack/packer/start/packer.nvim; \
	else \
		echo "Packer is already installed."; \
	fi


.PHONY: clean
clean:
	unlink ${HOME}/.config/nvim || true
