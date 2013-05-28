//
//  BPOSliderCell.h
//  BPODial
//
//  Created by Martin Höller on 06.05.13.
//  Copyright (c) 2013 BYTEPOETS GmbH. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BPOSliderCell : NSSliderCell

@property (nonatomic,assign) BOOL 		concave;						// defines the visual style of the knob
@property (nonatomic,strong) NSString  *minLabel,					// label at the minimum tick mark
													*maxLabel;					// label at the maximum tick mark
@property (nonatomic,assign) CGFloat 	apertureInDegrees,		// The available aperture in degrees. Acceptable range is 25° to 180°
													tickMarkRadius, 			// defines how big the tick marks are
													cellSize;					// defines the cell size

@property (readonly) CGFloat 	knobRadius, tickMarkDistance;		

@property (nonatomic) NSFont *font;
@property (nonatomic) NSColor *fontColor, *fontShadowColor;

@end
