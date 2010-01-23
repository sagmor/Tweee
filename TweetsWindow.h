//
//  TweetsWindow.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class TweetsViewController;

@interface TweetsWindow : NSWindow {
	TweetsViewController *tweetsViewController;
}

@property(retain, nonatomic) IBOutlet TweetsViewController *tweetsViewController;

@end
