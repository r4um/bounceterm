CFLAGS=-mmacosx-version-min=10.4 -bundle -framework Cocoa -arch i386 -arch x86_64 -arch ppc -arch ppc64

all: build

build:
	mkdir -p BounceTerm.bundle/Contents/MacOS
	gcc $(CFLAGS) BounceTerm.m -o BounceTerm.bundle/Contents/MacOS/BounceTerm
	cp Info.plist BounceTerm.bundle/Contents
clean:
	rm -rf BounceTerm.bundle
install:
	mkdir -p $(HOME)/Library/Application\ Support/SIMBL/Plugins
	cp -R BounceTerm.bundle $(HOME)/Library/Application\ Support/SIMBL/Plugins
