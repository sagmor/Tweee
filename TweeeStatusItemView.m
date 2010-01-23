//
//  TweeStatusItemView.m
//  Tweee
//
//  Created by Sebastian Gamboa on 1/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TweeeStatusItemView.h"
#import "TweeeStatusItemController.h"


@implementation TweeeStatusItemView

- (TweeeStatusItemView *)initWithController:(TweeeStatusItemController *)aController
{
	float thickness = [[NSStatusBar systemStatusBar] thickness];
	self = [super initWithFrame:NSMakeRect(0, 0, thickness, thickness)];
	if (self != nil) {
		[self setImage:[NSImage imageNamed:@"menubar"]];
		controller = aController;
	}
	return self;
}

+ (TweeeStatusItemView *)viewWithController:(TweeeStatusItemController *)aController
{
	return [[[TweeeStatusItemView alloc] initWithController:aController] autorelease];
}

- (void)mouseDown:(NSEvent *)event
{
    NSRect frame = [[self window] frame];
    NSPoint point = NSMakePoint(NSMidX(frame), NSMinY(frame));
    [controller toggleAttachedWindowAtPoint:point];
}

@end
