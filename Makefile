.PHONY: build ensure-dist clean src dev-init test

DISTRELATIVE := ./dist
DIST := $(shell realpath $(DISTRELATIVE))
export DIST

build: ensure-dist clean src

ensure-dist:
	mkdir -p dist

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