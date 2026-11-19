DISTRELATIVE := ./dist
DIST := $(shell realpath $(DISTRELATIVE))
export DIST

# where test clients download the resource pack from (override: make test RP_HOST=example.com)
RP_HOST ?= $(shell hostname -I | cut -d' ' -f1)
RP_PORT ?= 8000

build: clean src

clean:
	rm -rf dist/*

src:
	mkdir -p dist/datapacks dist/resourcepacks
	$(MAKE) -C $@ $(MAKECMDGOALS)

dev-init: # ubuntu only
	apt install -y python3 zip unzip openjdk-25-jre-headless

test: clean build
	mkdir -p test/world/datapacks/
	rm -f test/world/datapacks/*
	cp dist/datapacks/* test/world/datapacks/
# the server can only send one resource pack, so merge them all into test/resourcepack/resources.zip
	rm -rf test/resourcepack
	mkdir -p test/resourcepack/merged
	for pack in dist/resourcepacks/*.zip; do unzip -oq "$$pack" -d test/resourcepack/merged; done
	cd test/resourcepack/merged && zip -rq ../resources.zip *
	sed -i \
		-e "s|^resource-pack=.*|resource-pack=http://$(RP_HOST):$(RP_PORT)/resources.zip|" \
		-e "s|^resource-pack-sha1=.*|resource-pack-sha1=$$(sha1sum test/resourcepack/resources.zip | cut -d' ' -f1)|" \
		test/server.properties
	cd test && (python3 -m http.server $(RP_PORT) --directory resourcepack > /dev/null 2>&1 & HTTP_PID=$$!; java -Xmx1024M -Xms1024M -jar server.jar nogui; kill $$HTTP_PID)

.PHONY: all build clean src dev-init test