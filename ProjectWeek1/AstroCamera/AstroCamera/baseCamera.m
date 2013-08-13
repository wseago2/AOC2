//
//  baseCamera.m
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "baseCamera.h"

@implementation baseCamera

// synthesize methods here to create getter/setter
@synthesize exposureTimeSeconds;
@synthesize totalExposureTimeSeconds;
@synthesize filtersNeeded;
@synthesize imagingType;
@synthesize totalFrames;
@synthesize totalUnguidedTimeSeconds;
@synthesize totalHighISOTime;


//init method here
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString *)imagingType ;
{
    self = [super init];
    if (self != nil)
        {
            [self setExposureTimeSeconds:0];
            [self setTotalExposureTimeSeconds:0];
            [self setImagingType:nil];
            [self setFiltersNeeded:1];
            
            
        }
    return self;
}

// base calcualation method here
-(void)calculateTotalExposureTime
{
    [self setTotalExposureTimeSeconds:(self.exposureTimeSeconds * self.filtersNeeded)];
}


@end
