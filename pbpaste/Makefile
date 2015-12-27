CC=clang
ARCH=-arch armv7 -mios-version-min=2.0 -isysroot `xcrun --sdk iphoneos --show-sdk-path`
#FLAGS=-framework Foundation -ObjC -arch arm
FRAMEWORKS=-framework UIKit
BIN=../bin
#ARC=-fobjc-arc
FLAGS=-framework Foundation $(FRAMEWORKS) $(ARC)
#DYNAMIC=-dynamiclib -undefined suppress -flat_namespace
OUT=$(BIN)/pbpaste

all: $(OUT)

copy: $(OUT)
	scp $(OUT) iphone:bin/

clean:
	rm -f $(OUT)

$(OUT): *.m
	mkdir -p $(BIN)
	$(CC) $^ $(ARCH) $(FLAGS) $(DYNAMIC) -o $@
