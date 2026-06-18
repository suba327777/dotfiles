.PHONY: init
init:
	mkdir -p ${HOME}/.config
	ln -sfnv $(CURDIR) ${HOME}/.config/mise

.PHONY: clean
clean:
	unlink ${HOME}/.config/mise || true
