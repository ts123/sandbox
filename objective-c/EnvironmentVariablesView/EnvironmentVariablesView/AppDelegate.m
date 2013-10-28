//
//  AppDelegate.m
//  EnvironmentVariablesView
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    NSDictionary* env = [[NSProcessInfo processInfo] environment];
    NSMutableArray* a = [NSMutableArray arrayWithCapacity:0];
    for (NSString* key in [env allKeys]) {
        NSMutableDictionary* d = [NSMutableDictionary dictionaryWithObjectsAndKeys:
                                  key, @"key",
                                  [env valueForKey:key], @"value",
                                  nil];
        [a addObject:d];
    }
    [_controller setContent:a];
    
    NSSortDescriptor* sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"key" ascending:YES];
    [_tableView setSortDescriptors:[NSArray arrayWithObject:sortDescriptor]];
}

@end
