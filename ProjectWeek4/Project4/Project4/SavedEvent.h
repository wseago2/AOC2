//
//  SavedEvent.h
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"
#import "AddEventViewController.h"

@interface SavedEvent : NSObject
{
    NSString *sharedEventData;
}
@property (nonatomic, strong) NSString *sharedEventData;


+(SavedEvent*)GetInstance;

-(void)saveUserData:(NSString*)combinedDataString;


@end
