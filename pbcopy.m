#import <UIKit/UIKit.h>
#include <stdio.h>

int main(int argc, char *argv[]) {
    UIApplicationInitialize();

    UIPasteboard *pb = [UIPasteboard generalPasteboard];
    NSMutableString *str = [NSMutableString string];
    if(argc > 1)
    {
        int i;
        for(i = 1; i < argc; i++)
        {
            [str appendFormat:@"%s", argv[i]];
            if(i != argc - 1) [str appendString:@" "];
        }
    }
    else
    {
        char buf[BUFSIZ];
        int size;
        while((size = fread(buf, sizeof(char), BUFSIZ, stdin)) > 0)
            [str appendFormat:@"%s", buf];
    }
    pb.string = str;

    return 0;
}
