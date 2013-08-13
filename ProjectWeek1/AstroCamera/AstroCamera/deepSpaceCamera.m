//
//  deepSpaceCamera.m
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "deepSpaceCamera.h"

@implementation deepSpaceCamera

// synthesize properties here
@synthesize unguidedTimeSeconds;

// init method here returns instance id
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString *)imagingType
{
    self = [super init];
    if (self != nil)
    {
        [self setExposureTimeSeconds:600];
        [self setImagingType:@"Monochrome"];
        [self setFiltersNeeded:3];
        [self setUnguidedTimeSeconds:240];
        [self setTotalUnguidedTimeSeconds:1];
    }
    return self;
}

// overriding calcualtion method here
-(void)calculateTotalExposureTime
    {
        [super calculateTotalExposureTime];
        [self setTotalUnguidedTimeSeconds:self.unguidedTimeSeconds * self.filtersNeeded];
//        NSLog(@"This camera will track without guiding for %i seconds.", self.totalUnguidedTimeSeconds);
    }

@end
