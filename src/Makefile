SUBDIRS := datapacks

build: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)

test: build

.PHONY: all $(SUBDIRS) build test