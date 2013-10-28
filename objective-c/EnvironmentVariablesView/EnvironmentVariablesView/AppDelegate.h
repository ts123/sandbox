//
//  AppDelegate.h
//  EnvironmentVariablesView
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTableView *tableView;
@property (assign) IBOutlet NSArrayController *controller;

@end
