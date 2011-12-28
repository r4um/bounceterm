#import <Cocoa/Cocoa.h>

@interface BounceTerm: NSObject
@end

@implementation BounceTerm

+ (void) load
{
    NSNotificationCenter* center = [NSNotificationCenter defaultCenter];
    if (!center)
    {
        NSLog(@"[BounceTerm] ERROR: Got nil from "
               "[NSNotificationCenter defaultCenter]");
        return;
    }

    [center addObserver: self
            selector: @selector(emulatorDidBeep:)
            name: @"TTEmulatorDidBeep"
            object: nil];
}

+ (void) emulatorDidBeep: (NSNotification*) notification
{
    [NSApp requestUserAttention: NSCriticalRequest];
}

@end
