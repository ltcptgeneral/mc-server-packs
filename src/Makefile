SUBDIRS := $(shell ls -d */ | cut -f1 -d'/')

build: $(SUBDIRS)

$(SUBDIRS):
	@echo "packaging $@"
	@cd $@; zip -rq "$(DIST)/$@.zip" *

test: build

.PHONY: all $(SUBDIRS) clean test