//
//  AppDelegate.m
//  LinkToSubView
//
//  Created by 河野 さおり on 2016/01/29.
//  Copyright © 2016年 河野 さおり. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)loadView:(NSString*)viewName{
    if (_currentViewController){
        [[_currentViewController view]removeFromSuperview];
    }
    _currentViewController = [[NSViewController alloc]initWithNibName:viewName bundle:nil];
    NSView *view = [_currentViewController view];
    [_contentView addSubview:view];
}

- (IBAction)loadView1:(id)sender {
    [self loadView:@"SubView1"];
}

- (IBAction)loadView2:(id)sender {
    [self loadView:@"SubView2"];
}

@end
