//
//  TweeeStatusItem.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TweeeMenuViewController;
@class MAAttachedWindow;

@interface TweeeStatusItemController : NSObject {
	NSStatusItem *statusItem;
	MAAttachedWindow *attachedWindow;
	TweeeMenuViewController *menuViewController;
}

@property(readonly) NSStatusItem *statusItem;
@property(readonly) TweeeMenuViewController *menuViewController;

- (TweeeStatusItemController *)init;
- (void)toggleAttachedWindowAtPoint:(NSPoint)pt;

@end
