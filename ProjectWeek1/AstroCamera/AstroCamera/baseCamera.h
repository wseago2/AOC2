//
//  baseCamera.h
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCamera : NSObject
{
    int cameraType;
}

// setup typedef
typedef enum
{
    PLANETARY,
    DEEPSPACE,
    SLR
}cameraType;

// declare properties
@property int exposureTimeSeconds;
@property int totalExposureTimeSeconds;
@property int filtersNeeded;
@property(nonatomic, strong) NSString *imagingType;
@property int totalFrames;
@property int totalUnguidedTimeSeconds;
@property int totalHighISOTime;


// init method
-(id)initWithDetails:(int)exposureTimeSeconds imagingType:(NSString*)imagingType;


// calculation method
-(void)calculateTotalExposureTime;

@end
