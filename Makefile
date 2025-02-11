DISTRELATIVE := ./dist
DIST := $(shell realpath $(DISTRELATIVE))
export DIST

build: src
clean: src
	rm -r test/*

src:
	$(MAKE) -C $@ $(MAKECMDGOALS)

dev-init: # ubuntu only 
	apt install -y python3 openjdk-21-jre-headless

test:
	cp dist/* test/world/datapacks/
	cd test && java -Xmx1024M -Xms1024M -jar server.jar nogui 

.PHONY: all src test