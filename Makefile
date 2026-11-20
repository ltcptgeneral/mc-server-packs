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
	mkdir -p dist/datapacks
	$(MAKE) -C $@ $(MAKECMDGOALS)

dev-init: # ubuntu only
	apt install -y python3 zip unzip openjdk-25-jre-headless

test: clean build
	mkdir -p test/world/datapacks/
	rm -f test/world/datapacks/*
	cp dist/datapacks/* test/world/datapacks/
	cd test && java -Xmx1024M -Xms1024M -jar server.jar nogui

.PHONY: all build clean src dev-init test