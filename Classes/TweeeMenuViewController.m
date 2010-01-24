//
//  TweeeMenuViewController.m
//  Tweee
//
//  Created by Sebastian Gamboa on 1/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TweeeMenuViewController.h"
#import "MAAttachedWindow.h"

@implementation TweeeMenuViewController

@synthesize mainView;
@synthesize optionsView;

- (IBAction)exitTweee:(id)sender
{
	exit(0);
}

- (IBAction)toggleView:(id)sender
{
	NSView *newView = (self.view == mainView) ? optionsView : mainView;
	NSWindow *window = self.view.window;
	
	[(MAAttachedWindow *)window setView:newView];
}

@end
