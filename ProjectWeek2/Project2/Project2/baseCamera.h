//
//  baseCamera.h
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCamera : NSObject
{
    int cameraType;
}

// setup enum for cameraType
typedef enum
{
    PLANETARY,
    DEEPSKY,
    SLR
}cameraType;

// declare properties here
@property int exposureTimeSeconds;
@property int totalExposureTimeSeconds;
@property(nonatomic, strong) NSString *imagingType;
@property int filtersNeeded;
@property int filterChangeTime;



// init method here
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString*)imagingType;
//-(id)initWithDetails;

// calculation method here
-(int)calculateTotalExposureTime;

@end
