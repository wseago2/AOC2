//
//  deepSkyCamera.m
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "deepSkyCamera.h"

@implementation deepSkyCamera

// init method here
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString *)imagingType
{
    self = [super init];
    if (self != nil)
    {
        [self setExposureTimeSeconds:600];
        [self setTotalExposureTimeSeconds:1];
        [self setImagingType:@"Monochrome"];
        [self setFiltersNeeded:4];
        [self setFilterChangeTime:60];
    }
    return self;
}

// calculate exposure time method here
-(int)calculateTotalExposureTime
{
    [self setTotalExposureTimeSeconds:(self.exposureTimeSeconds * self.filtersNeeded) + self.filterChangeTime];
    return [self totalExposureTimeSeconds];
}

@end
