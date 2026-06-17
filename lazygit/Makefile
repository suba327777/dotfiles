LAZYGIT_CONFIG_DIR := $(HOME)/Library/Application Support/lazygit

.PHONY: init
init:
	mkdir -p "$(LAZYGIT_CONFIG_DIR)" && \
		ln -sfnv $(PWD)/config.yml "$(LAZYGIT_CONFIG_DIR)/config.yml"

.PHONY: clean
clean:
	unlink "$(LAZYGIT_CONFIG_DIR)/config.yml" || true
