//
//  SavedEvent.h
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SavedEvent : NSObject
{
   
}
@property (nonatomic) NSString *sharedEventTitle;
@property (nonatomic) NSString *sharedEventDate;

+(SavedEvent*)GetInstance;
// +(id)sharedSavedEvent;

@end
