//
//  BPOAppDelegate.m
//  BPODial
//
//  Created by Martin Höller on 06.05.13.
//  Copyright (c) 2013 BYTEPOETS GmbH. All rights reserved.
//

#import "BPOAppDelegate.h"
#import "BPODial.h"

@implementation BPOAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
}

static NSSize initInset;
- (void)awakeFromNib
{
	self.dial.numberOfTickMarks = 7;
	self.dial.tickMarkRadius = 5;
	self.dial.apertureInDegrees = 180;
	self.dial.minLabel = @"1";
	self.dial.maxLabel = @"100";
	 self.value = 10;
	initInset = (NSSize) { _dial.frame.origin.x, _dial.frame.origin.y};
	
//	[self.dial bind:@"numberOfTickMarks" toObject:self withKeyPath:@"value" options:nil];
//	[self.dial bind:@"cellSize" toObject:self withKeyPath:@"dialFrame" options:nil];
//	[self.dial bind:@"tickMarkRadius" toObject:self withKeyPath:@"relativeRadius" options:nil];
//	 = [sender integerValue];
   [self.label bind:@"stringValue" toObject:self withKeyPath:@"value" options:nil];//
//	 NSString stringWithFormat:@"Value: %ld", sender.integerValue];
}

- (void) setScale:(CGFloat)scale { _scale = scale;
	NSRect r = [_window.contentView frame];
	r.size.height-= 50;
	r.origin.y += 50;
	r.size.height = r.size.width = _scale * r.size.height;
	
	r.origin.x = ([_window.contentView frame].size.width*.5) - .5 * r.size.width;
//	, off, initInset.height - off);// = (NSSize) {initInset.width *_scale, initInset.height *_scale
//	r.size.width *= _scale;
//	r.size.height *= _scale;
	_dial.frame = r;
//	NSLog(@"scale...  %f.  cellsize:%f", _scale, _dial.cellSize);
}
//- (NSRect)dialframe {  NSRect r =  (NSRect){ self.dial.frame.origin.x, self.dial.frame.origin.y, self.value*10, self.value*10};
//	NSLog(@"RECT:%@", NSStringFromRect(r));
//	return r;
//}

+ (NSSet*) keyPathsForValuesAffectingDialFrame 		 { return [NSSet setWithObject:@"value"]; }
+ (NSSet*) keyPathsForValuesAffectingRelativeRadius { return [NSSet setWithObject:@"value"]; }
- (CGFloat)relativeRadius {

	CGFloat r = self.dial.numberOfTickMarks/10.0;
	NSLog(@"radius:  %f", r);
	return r;
}

@end
