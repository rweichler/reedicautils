#import <UIKit/UIKit.h>
#include <stdio.h>

void UIApplicationInitialize(); //suppress warning

int main(int argc, char *argv[]) {
    @autoreleasepool
    {
        UIApplicationInitialize();

        printf("%s", UIPasteboard.generalPasteboard.string.UTF8String);
        return 0;
    }
}
