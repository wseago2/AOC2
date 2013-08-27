//
//  SavedEvent.m
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SavedEvent.h"

@implementation SavedEvent

static SavedEvent *_instance = nil;

+(SavedEvent*)GetInstance
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
    if (self = [super init])
    {
        
    }
    return self;
}

/*
+(id)sharedSavedEvent
{
    static SavedEvent *sharedSavedEvent = nil;
    
    if (sharedSavedEvent == nil)
    {
        sharedSavedEvent = [[self alloc] init];
        
    }
    return sharedSavedEvent;
}
*/


@end
