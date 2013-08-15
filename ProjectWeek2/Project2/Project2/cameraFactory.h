//
//  cameraFactory.h
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCamera.h"
#import "planetaryCamera.h"
#import "deepSkyCamera.h"
#import "slrCamera.h"

@interface cameraFactory : NSObject

+(baseCamera *)createNewCamera:(int)cameraType;

@end
