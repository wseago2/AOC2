//
//  cameraFactory.m
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "cameraFactory.h"

@implementation cameraFactory

+(baseCamera *)createNewCamera:(int)cameraType
{
    if(cameraType == PLANETARY)
    {
        return [[planetaryCamera alloc] initWithDetails:(60) imagingType:@"Monochrome"];
    }
    else if (cameraType == DEEPSKY)
    {
        return [[deepSkyCamera alloc] initWithDetails:(600) imagingType:@"Monochrome"];
    }
    else if (cameraType == SLR)
    {
        return [[slrCamera alloc] initWithDetails:(600) imagingType:@"One Shot Color"];
    }
    else return nil;
}

@end
