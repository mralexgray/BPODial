//
//  BPODial.m
//  BPODial
//
//  Created by Martin Höller on 06.05.13.
//  Copyright (c) 2013 BYTEPOETS GmbH. All rights reserved.
//

#import "BPODial.h"
#import "BPOSliderCell.h"

//#define CELL_SIZE 168.0f

@implementation BPODial

+ (Class) cellClass						{ return BPOSliderCell.class; }
-	(id) initWithFrame:  (NSRect)f	{ return self != [super initWithFrame:f] ? nil : [self _setupCell], self; }
-	(id) initWithCoder:(NSCoder*)d	{ return self != [super initWithCoder:d] ? nil : [self _setupCell], self; }
-	(id) init								{ return self != [super init] 			  ? nil : [self _setupCell], self; }
-  (void)_setupCell						{

   BPOSliderCell *cell = BPOSliderCell.new;
	
	self.apertureInDegrees 	=  116.0;
	self.concave 				=	   NO;
	self.tickMarkRadius	 	=	  3.0;
	self.numberOfTickMarks 	= 		 9;
	self.minLabel 				= @"min";
	self.maxLabel 				= @"max";
	self.cellSize 				= 168.0f;
	self.fontColor				= NSColor.redColor;
	self.font					= [NSFont fontWithName:@"UbuntuMono-Bold" size:22];
	self.fontShadowColor		= NSColor.greenColor;
	
	[cell bind:@"font" 					toObject:self withKeyPath:@"font" 				options:nil];
	[cell bind:@"fontColor" 			toObject:self withKeyPath:@"fontColor" 				options:nil];
	[cell bind:@"fontShadowColor" 	toObject:self withKeyPath:@"fontShadowColor" 				options:nil];
	[cell bind:@"cellSize" 				toObject:self withKeyPath:@"cellSize" 				options:nil];

	[cell bind:@"minValue" 				toObject:self withKeyPath:@"minValue" 				options:nil];
	[cell bind:@"maxValue" 				toObject:self withKeyPath:@"maxValue" 				options:nil];
	[cell bind:@"tickMarkRadius"		toObject:self withKeyPath:@"tickMarkRadius" 		options:nil];
	[cell bind:@"concave" 				toObject:self withKeyPath:@"concave" 				options:nil];
	[cell bind:@"apertureInDegrees" 	toObject:self withKeyPath:@"apertureInDegrees" 	options:nil];
	[cell bind:@"minLabel" 				toObject:self withKeyPath:@"minLabel" 				options:nil];
	[cell bind:@"maxLabel" 				toObject:self withKeyPath:@"maxLabel" 				options:nil];

//	self.frame = (NSRect){self.frame.origin.x - (self.cellSize/2)+16,self.frame.origin.y-(self.cellSize/2) + 16,self.cellSize,self.cellSize};
	[self setCell:cell];
}
- (void) setFrame:(NSRect)frameRect {
	[super setFrame:frameRect];
	self.cellSize = MIN(frameRect.size.width, frameRect.size.height);
}
- (void) drawRect:(NSRect)dirtyRect {

	[super drawRect:dirtyRect];
	[NSColor.redColor set];
	[[NSBezierPath bezierPathWithRect:dirtyRect] stroke];
	
}


@end

#pragma mark - Additional configuration properties 
//-	  (void) setTickMarkRadius:(CGFloat)tickMarkRadius	{ [self.cell setTickMarkRadius:tickMarkRadius]; }
//-   (CGFloat) tickMarkRadius										{ return [self.cell tickMarkRadius];				}
//-	  (void) setConcave:(BOOL)concave							{ [self.cell setConcave:concave];					}
//-	  (BOOL) concave												{ return [self.cell concave];							}
//-	  (void) setApertureInDegrees:(CGFloat)apDeg			{ [self.cell setApertureInDegrees:apDeg];			}
//-   (CGFloat) apertureInDegrees									{ return [self.cell apertureInDegrees];			}
//-	  (void) setMinLabel:(NSString *)minLabel				{ [self.cell setMinLabel:minLabel];					}
//- (NSString*) minLabel												{ return [self.cell minLabel];						}
//-	  (void) setMaxLabel:(NSString *)maxLabel				{ [self.cell setMaxLabel:maxLabel];					}
//- (NSString*) maxLabel												{ return [self.cell maxLabel];						}
//- (NSRect)_frame { NSRect r = [super frame];   r.origin.x -= (CELL_SIZE/2)+16; r.origin.y -= (CELL_SIZE/2) + 16; r.size.width = CELL_SIZE; r.size.height = CELL_SIZE; return r;  }
