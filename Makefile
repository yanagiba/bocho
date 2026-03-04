BUILD_DIR=.build/debug

.PHONY: all clean build test

all: build

clean:
	swift package clean

build:
	swift build

test: build
	swift test
