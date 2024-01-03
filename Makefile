.PHONY: clear
clear:
	@cls || clear

.PHONY: install
install:
	mix do deps.get, deps.compile
