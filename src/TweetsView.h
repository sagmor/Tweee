//
//  TweetsView.h
//  Tweee
//
//  Created by Sebastian Gamboa on 1/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Webkit/WebKit.h>


@interface TweetsView : NSView {
	WebView *webView;
}

@property(retain, nonatomic) IBOutlet WebView *webView;

@end
