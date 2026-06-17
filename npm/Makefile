.PHONY: init
init:
	xargs npm install -g < ${PWD}/packages

.PHONY: dump
dump:
	npm list -g --depth=0 --parseable \
		| tail -n +2 \
		| xargs -I{} basename {} \
		| sed 's/@[^@]*$$//' \
		| grep -v '^npm$$' \
		| grep -v '^corepack$$' \
		> ${PWD}/packages

.PHONY: clean
clean:
	xargs npm uninstall -g < ${PWD}/packages || true
