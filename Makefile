MIX_EXECUTABLE = mix

.PHONY: clear
clear:
	@cls || clear

.PHONY: install
install:
	${MIX_EXECUTABLE} do deps.get, deps.compile
