//
//  SLRCamera.m
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SLRCamera.h"

@implementation SLRCamera

// synthesize properties here
@synthesize highISOModifier;

// init method here returns instance id
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString *)imagingType
{
    self = [super init];
    if (self != nil)
    {
        [self setExposureTimeSeconds:600];
        [self setImagingType:@"One Shot Color"];
        [self setFiltersNeeded:1];
        [self setTotalHighISOTime:0];
        [self setHighISOModifier:0.65f];
    }
    return self;
}


// overriding calcualtion method here
-(void)calculateTotalExposureTime
{
    [super calculateTotalExposureTime];
    [self setTotalHighISOTime:self.exposureTimeSeconds * self.highISOModifier];
}

@end
