.PHONY: all clean

APP_DIR := Untitled.app
BINARY_NAME := main
APP_ID := com.cameronpalmer.Untitled
SYSROOT:=$(shell xcrun --sdk iphonesimulator --show-sdk-path)

OBJS := $(addprefix $(APP_DIR)/,main Info.plist)
ARCHS := $(addprefix -arch ,x86_64 arm64)

all: $(OBJS)

$(APP_DIR)/main: main.m
	clang $(ARCHS) -isysroot $(SYSROOT) -framework Foundation -framework UIKit -lobjc -o $@ $<

$(APP_DIR)/Info.plist:
	./generate_info_plist.py $(APP_DIR)/Info.plist

$(OBJS): | $(APP_DIR)

$(APP_DIR):
	mkdir -p $(APP_DIR)

clean:
	rm -rf Untitled.app Info.plist

