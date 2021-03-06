#import <UIKit/UIKit.h>
#include <stdio.h>

void UIApplicationInitialize(); //suppress warning

int main(int argc, char *argv[]) {
    @autoreleasepool
    {
        UIApplicationInitialize();

        UIPasteboard *pb = [UIPasteboard generalPasteboard];
        NSMutableString *str = [[NSMutableString alloc] init];
        if(argc <= 1 || isatty(fileno(stdin)) == 0)
        {
            char buf[BUFSIZ];
            int size;
            while((size = fread(buf, sizeof(char), BUFSIZ, stdin)) > 0)
                [str appendFormat:@"%s", buf];
        }
        else
        {
            int i;
            for(i = 1; i < argc; i++)
            {
                [str appendFormat:@"%s", argv[i]];
                if(i != argc - 1) [str appendString:@" "];
            }
        }
        pb.string = str;

        [str release];

        return 0;
    }
}
