//
//  NSAffineTransform+Rotation.h
//  BPODial
//
//  Created by Martin Höller on 06.05.13.
//  Copyright (c) 2013 BYTEPOETS GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAffineTransform (Rotation)
+ (NSAffineTransform *)transformRotatingAroundPoint:(NSPoint)p byDegrees:(CGFloat)deg;
@end

#define RADIANS_TO_DEGREES(__ANGLE__) ((__ANGLE__) * 57.29577951f) // PI * 180
#define DEGREES_TO_RADIANS(__ANGLE__) ((__ANGLE__) * 0.01745329252f) // PI / 180
CGFloat vecLength				(CGPoint a);					// returns the length of a vector
CGFloat vecSquareLength		(const CGPoint a);			// returns the square length of a vector
CGPoint vecMultiply			(CGPoint a, CGFloat s);		// multiplies a vector by a scalar factor
CGPoint vecAdd					(CGPoint a , CGPoint b);	// adds a to b
CGPoint vecSub					(CGPoint a , CGPoint b);	// subtracts b from a
CGPoint vecNormalize			(CGPoint a);					// normalizes a vector to length 1
CGFloat vecDotProduct		(CGPoint a, CGPoint b); 	// calculates the dot product between two vectors
CGFloat vecAngle				(CGPoint a, CGPoint b);		// angle in radians between two vectors
CGPoint vecRotateByAngle	(CGPoint a, 
									 CGPoint pivot, 
									 CGFloat angle); 				// rotates a point around a pivot point
																		// @param a the point to rotate
																		// @param pivot the pivot point around a is rotated
																		// @param angle the angle (in radians) which a is rotated by
