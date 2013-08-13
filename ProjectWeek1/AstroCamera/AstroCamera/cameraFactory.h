//
//  cameraFactory.h
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCamera.h"
#import "planetaryCamera.h"
#import "deepSpaceCamera.h"
#import "SLRCamera.h"

@interface cameraFactory : NSObject

+(baseCamera *)createNewCamera:(int)cameraType;

@end
