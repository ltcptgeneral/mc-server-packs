DISTRELATIVE := ./dist
DIST := $(shell realpath $(DISTRELATIVE))
export DIST

build: src
clean: src

src:
	$(MAKE) -C $@ $(MAKECMDGOALS)

.PHONY: all src