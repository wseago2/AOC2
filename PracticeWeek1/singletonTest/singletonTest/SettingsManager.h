//
//  SettingsManager.h
//  singletonTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SettingsManager : NSObject

// static method
+(SettingsManager*)GetInstance;

// instance method
-(void)printSettings;

@end
