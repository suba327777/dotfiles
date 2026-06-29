.PHONY: init
init:
	mkdir -p ${HOME}/.config/aerospace
	ln -sfnv $(CURDIR)/aerospace.toml ${HOME}/.config/aerospace/aerospace.toml
	@echo "Linked aerospace config."

.PHONY: clean
clean:
	unlink ${HOME}/.config/aerospace/aerospace.toml || true
