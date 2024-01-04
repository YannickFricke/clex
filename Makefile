MIX_EXECUTABLE = mix

.PHONY: clear
clear:
	@cls || clear

.PHONY: install
install:
	${MIX_EXECUTABLE} do deps.get, deps.compile

.PHONY: test
test:
	${MIX_EXECUTABLE} test

.PHONY: format
format:
	${MIX_EXECUTABLE} format

.PHONY: check-format
check-format:
	${MIX_EXECUTABLE} format --check-formatted

.PHONY: docs
docs:
	${MIX_EXECUTABLE} docs
