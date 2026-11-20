SUBDIRS := $(shell ls -d */ | cut -f1 -d'/')

build: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

test: build

.PHONY: all $(SUBDIRS) build test