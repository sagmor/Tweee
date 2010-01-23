//
//  TweeeAppDelegate.m
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TweeeAppDelegate.h"
#import "TweeeStatusItemController.h"

@implementation TweeeAppDelegate

@synthesize window;
@synthesize statusItemController;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
	statusItemController = [[TweeeStatusItemController alloc] init];
}

@end
