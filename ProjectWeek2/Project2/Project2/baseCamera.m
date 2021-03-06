//
//  baseCamera.m
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "baseCamera.h"

@implementation baseCamera

// synthesize methods here to create getter/setter methods
@synthesize exposureTimeSeconds;
@synthesize totalExposureTimeSeconds;
@synthesize imagingType;
@synthesize filtersNeeded;
@synthesize filterChangeTime;

// init method here
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString *)imagingType
{
    self = [super init];
    if (self != nil)
    {
        [self setExposureTimeSeconds:0];
        [self setTotalExposureTimeSeconds:0];
        [self setImagingType:nil];
        [self setFiltersNeeded:1];
        [self setFilterChangeTime:0];
    }
    return self;
}

// base calculation method here
-(int)calculateTotalExposureTime
{
    NSLog(@"Total exposure time = %i", totalExposureTimeSeconds);
    return totalExposureTimeSeconds;
}

@end
