#!/usr/bin/env bash

make xcodegen
WORKING_DIRECTORY=$(PWD) xcodebuild -project bocho.xcodeproj -scheme bocho-Package clean
WORKING_DIRECTORY=$(PWD) xcodebuild -project bocho.xcodeproj -scheme bocho-Package -sdk macosx10.13 -destination arch=x86_64 -configuration Debug -enableCodeCoverage YES test
