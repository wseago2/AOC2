//
//  planetaryCamera.m
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "planetaryCamera.h"

@implementation planetaryCamera

// synthesize properties here
@synthesize framesPerSecond;


// init method here returns instance id
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString *)imagingType
{
    self = [super init];
    if (self != nil)
        {
            [self setExposureTimeSeconds:60];
            [self setImagingType:@"Monochrome"];
            [self setFramesPerSecond:120];
            [self setTotalFrames:0];
            [self setFiltersNeeded:3];
        }
    return self;
}



// overriding calcualtion method here
-(void)calculateTotalExposureTime
{
    [super calculateTotalExposureTime];
    [self setTotalFrames:(self.exposureTimeSeconds * self.filtersNeeded) * self.framesPerSecond];
//    NSLog(@"This camera will shoot %i frames in 3 minutes.", self.totalFrames);
}

@end
