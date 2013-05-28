//
//  BPODial.h
//  BPODial
//
//  Created by Martin Höller on 06.05.13.
//  Copyright (c) 2013 BYTEPOETS GmbH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BPODial : NSSlider

@property (nonatomic, assign) BOOL 		concave;	 				// defines the visual style of the knob

@property (nonatomic, assign) CGFloat 	cellSize,
													apertureInDegrees,	// The available aperture in degrees. Acceptable range is 25° to 180°
													tickMarkRadius;		// defines how big the tick marks are
@property (nonatomic, strong) NSString *minLabel, 				// label at the minimum tick mark
													*maxLabel;				// label at the maximum tick mark


@property NSFont *font;
@property NSColor *fontColor, *fontShadowColor;

@end
