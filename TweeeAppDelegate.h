//
//  TweeeAppDelegate.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class TweetsWindow;
@class TweeeStatusItemController;

@interface TweeeAppDelegate : NSObject <NSApplicationDelegate> {
    TweetsWindow *window;
	TweeeStatusItemController *statusItemController;
}

@property (assign) IBOutlet TweetsWindow *window;
@property (readonly) TweeeStatusItemController *statusItemController;

@end
