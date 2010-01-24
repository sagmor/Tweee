//
//  TweeeStatusItem.m
//  Tweee
//
//  Created by Sebastian Gamboa on 1/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TweeeStatusItemController.h"
#import "TweeeMenuViewController.h"
#import "TweeeStatusItemView.h"
#import "MAAttachedWindow.h"

@implementation TweeeStatusItemController

@synthesize statusItem;
@synthesize menuViewController;

- (TweeeStatusItemController *)init
{
	self = [super init];
	if (self != nil) {
		statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength] retain];
		
		[statusItem setView:[TweeeStatusItemView viewWithController:self]];
		[statusItem setEnabled:YES];
		
		menuViewController = [[TweeeMenuViewController alloc] initWithNibName:@"TweeeMenuView" bundle:nil];
	}
	return self;
}

- (void)toggleAttachedWindowAtPoint:(NSPoint)point
{
	if (attachedWindow) {
		[attachedWindow orderOut:self];
        [attachedWindow release];
        attachedWindow = nil;
	} else {
		attachedWindow = [[MAAttachedWindow alloc] initWithView:menuViewController.view 
                                                attachedToPoint:point 
                                                       inWindow:nil 
                                                         onSide:MAPositionBottom 
                                                     atDistance:5.0];
		[attachedWindow makeKeyAndOrderFront:statusItem.view.window];
	}

	
}


@end
