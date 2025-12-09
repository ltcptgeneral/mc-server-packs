SUBDIRS := $(shell ls -d */ | cut -f1 -d'/')

build: $(SUBDIRS)

$(SUBDIRS):
	@echo "packaging $@"
	@cd $@; zip -rq "$(DIST)/$@.zip" *

#clean:
#	@for d in $(SUBDIRS) ; do \
#		echo "removing $$d.zip" ; \
#		rm -f "$(DIST)/$$d.zip" ; \
#	done

test: build

.PHONY: all $(SUBDIRS) clean test