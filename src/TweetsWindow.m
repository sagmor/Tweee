//
//  TweetsWindow.m
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TweetsWindow.h"
#import "TweetsViewController.h"

@implementation TweetsWindow

@synthesize tweetsViewController;

- (void)awakeFromNib {
	
	[self setStyleMask:NSBorderlessWindowMask];
	[self setBackingType:NSBackingStoreBuffered]; 
	
	[self setBackgroundColor: [NSColor clearColor]];
	[self setOpaque:NO];
	[self setCanHide:NO];
	[self setAlphaValue:1.0];
	
	[self setHasShadow:NO];
	
	[self setContentView: tweetsViewController.view];
	
	NSScreen *screen = [NSScreen mainScreen];
	NSRect rect = [screen visibleFrame];
	rect.size.width = 450;
	
	[self setFrame:rect display:YES];
	[self setLevel:CGWindowLevelForKey(kCGDesktopWindowLevelKey)+1];
	[tweetsViewController.view setFrame:rect];
}

@end
