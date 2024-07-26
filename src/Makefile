SUBDIRS := $(shell ls -d */ | cut -f1 -d'/')

build: $(SUBDIRS)

$(SUBDIRS):
	@echo $@
	@cd $@; zip -rq "$(DIST)/$@.zip" *

clean:
	@for d in $(SUBDIRS) ; do \
		echo "$$d.zip" ; \
		rm -f "$(DIST)/$$d.zip" ; \
	done

.PHONY: all $(SUBDIRS)