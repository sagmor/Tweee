//
//  TweeStatusItemView.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class TweeeStatusItemController;

@interface TweeeStatusItemView : NSImageView {
	__weak TweeeStatusItemController *controller;
    BOOL highlighted;

}
- (TweeeStatusItemView *)initWithController:(TweeeStatusItemController *)aController;
+ (TweeeStatusItemView *)viewWithController:(TweeeStatusItemController *)aController;
@end
