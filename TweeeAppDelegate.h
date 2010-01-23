//
//  TweeeAppDelegate.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class TweetsWindow;

@interface TweeeAppDelegate : NSObject <NSApplicationDelegate> {
    TweetsWindow *window;
}

@property (assign) IBOutlet TweetsWindow *window;

@end
