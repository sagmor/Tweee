//
//  TweetsViewController.m
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "TweetsViewController.h"


@implementation TweetsViewController

@synthesize webView;

- (void)awakeFromNib {
	[webView setDrawsBackground:NO];
	
	NSBundle *bundle = [NSBundle mainBundle];
	NSURL *url = [NSURL fileURLWithPath:[bundle pathForResource:@"TweetsList" ofType:@"html"]];
	
	[[webView mainFrame] loadRequest:[NSURLRequest requestWithURL:url]];
}

@end
