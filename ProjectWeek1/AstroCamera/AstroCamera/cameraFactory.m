//
//  cameraFactory.m
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "cameraFactory.h"

@implementation cameraFactory

+(baseCamera *)createNewCamera:(int)cameraType
{
    if (cameraType == PLANETARY)
    {
        return [[planetaryCamera alloc] initWithDetails:(60) imagingType:@"Monochrome"];
    }
    else if (cameraType == DEEPSPACE)
    {
        return [[deepSpaceCamera alloc] initWithDetails:(600) imagingType:@"Monochrome"];
    }
    else if (cameraType == SLR)
    {
        return [[SLRCamera alloc] initWithDetails:(600) imagingType:@"One Shot Color"];
    }
    else return nil;
}

@end
