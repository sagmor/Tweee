//
//  TweeeMenuViewController.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TweeeMenuViewController : NSViewController {
	NSView *mainView;
	NSView *optionsView;
}

@property(retain,nonatomic) IBOutlet NSView *mainView;
@property(retain,nonatomic) IBOutlet NSView *optionsView;

- (IBAction)exitTweee:(id)sender;
- (IBAction)toggleView:(id)sender;

@end
