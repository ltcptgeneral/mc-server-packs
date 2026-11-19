SUBDIRS := $(shell ls -d */ | cut -f1 -d'/')

build: $(SUBDIRS)

$(SUBDIRS):
	@echo "packaging $@"
	@cd $@; zip -rq "$(DIST)/datapacks/$@.zip" *

test: build

.PHONY: all $(SUBDIRS) clean test