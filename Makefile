CFLAGS=-bundle -framework Cocoa -O2 -Wall
OBJECTS=BounceTerm.m
TARGET=BounceTerm.bundle/Contents/MacOS/BounceTerm

all: build

buildnative:
	mkdir -p BounceTerm.bundle/Contents/MacOS
	gcc $(CFLAGS) $(OBJECTS) -o $(TARGET)
	cp Info.plist BounceTerm.bundle/Contents
build:
	mkdir -p BounceTerm.bundle/Contents/MacOS
	gcc $(CFLAGS) -arch i386 -mmacosx-version-min=10.4 $(OBJECTS) -o $(TARGET).i386
	gcc $(CFLAGS) -arch ppc -mmacosx-version-min=10.4 $(OBJECTS) -o $(TARGET).ppc
	gcc $(CFLAGS) -arch x86_64 -mmacosx-version-min=10.5 $(OBJECTS) -o $(TARGET).x86_64
	gcc $(CFLAGS) -arch ppc64 -mmacosx-version-min=10.5 $(OBJECTS) -o $(TARGET).ppc64
	lipo -create $(TARGET).i386 $(TARGET).ppc $(TARGET).x86_64 $(TARGET).ppc64 -output $(TARGET)
	rm -f $(TARGET).i386 $(TARGET).ppc $(TARGET).x86_64 $(TARGET).ppc64
	cp Info.plist BounceTerm.bundle/Contents
clean:
	rm -rf BounceTerm.bundle
install:
	mkdir -p $(HOME)/Library/Application\ Support/SIMBL/Plugins
	cp -R BounceTerm.bundle $(HOME)/Library/Application\ Support/SIMBL/Plugins
