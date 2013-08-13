//
//  SettingsManager.m
//  singletonTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SettingsManager.h"


@implementation SettingsManager

static SettingsManager *_instance = nil;

+(SettingsManager*)GetInstance
{
    if (_instance == nil)
    {
        [[self alloc] init];
    }
    return _instance;
}

-(id)alloc
{
    _instance = [super alloc];

    return _instance;
}

-(id)init
{
    if(self = [super init])
    {
        
    }
    return self;
}

-(void)printSettings
{
    NSLog(@"screenwidth=%d, screenheight=%d", 320, 240);
}

@end
