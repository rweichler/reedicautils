CC=xcrun -sdk iphoneos clang
ARCH=-arch armv7 -mios-version-min=5.0 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS7.0.sdk
#FLAGS=-framework Foundation -ObjC -arch arm
FRAMEWORKS=-framework UIKit
BIN=bin
ARC=-fobjc-arc
FLAGS=-framework Foundation $(FRAMEWORKS) $(ARC)
#DYNAMIC=-dynamiclib -undefined suppress -flat_namespace
OUT=pbcopy

all: $(OUT)

copy: $(OUT)
	scp $(BIN)/$(OUT) iphone:bin/

clean:
	rm $(DYLIB)

$(OUT): *.m
	mkdir $(BIN)
	$(CC) $^ $(ARCH) $(FLAGS) $(DYNAMIC) -o $(BIN)/$@
