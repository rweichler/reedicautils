CC=xcrun -sdk iphoneos clang
ARCH=-arch armv7 -mios-version-min=2.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.0.sdk
#FLAGS=-framework Foundation -ObjC -arch arm
FRAMEWORKS=-framework UIKit
BIN=../bin
#ARC=-fobjc-arc
FLAGS=-framework Foundation $(FRAMEWORKS) $(ARC)
#DYNAMIC=-dynamiclib -undefined suppress -flat_namespace
OUT=$(BIN)/pbcopy

all: $(OUT)

copy: $(OUT)
	scp $(OUT) iphone:bin/

clean:
	rm $(DYLIB)

$(OUT): *.m
	mkdir -p $(BIN)
	$(CC) $^ $(ARCH) $(FLAGS) $(DYNAMIC) -o $@
