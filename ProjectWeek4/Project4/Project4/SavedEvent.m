//
//  SavedEvent.m
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SavedEvent.h"
#import "ViewController.h"
#import "AddEventViewController.h"

@implementation SavedEvent

// No longer needed, but for clarity
@synthesize sharedEventData;

static SavedEvent *_instance = nil;

+(SavedEvent*)GetInstance
{
    if (_instance == nil)
    {
        _instance = [[self alloc] init];
    }
    
    return _instance;
}

+(id)alloc
{
    _instance = [super alloc];
    
    return _instance;
}

-(id)init
{
    if (self = [super init])
    {
       // this needs to init with data from userDefaults
        
    }
    return self;
}

// method to append data
-(void)saveUserData:(NSString*)combinedDataString
{
    NSLog(@"saveUserData Fired");
    NSLog(@"Data = %@", combinedDataString);
    // this needs to append data and save to user defaults
    // when AddEventViewController is dismissed, ViewController needs to put data from userDefaults in the text view.
    
}

@end
