//
//  BPOAppDelegate.h
//  BPODial
//
//  Created by Martin Höller on 06.05.13.
//  Copyright (c) 2013 BYTEPOETS GmbH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class BPODial;

@interface BPOAppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet BPODial *dial;

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *label;
@property (weak) IBOutlet NSSlider *testSlider;
@property (assign) NSUInteger value;
@property (assign, nonatomic) CGFloat scale;


@property (readonly) CGFloat relativeRadius;

@property (readonly) NSRect dialFrame;

//- (IBAction)valueChanged:(NSSlider *)sender;
@end
