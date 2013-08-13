//
//  BaseCreature.h
//  inheritanceTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    CREATURETYPE_BEAR=0,
    CREATURETYPE_UNICORN,
    CREATURETYPE_DRAGON,
    CREATURETYPE_PLATYPUS
} ECreatureType;

@interface BaseCreature : NSObject
{
    // protected by default
@protected // for readability
    ECreatureType creatureType;
    NSString *creatureName;
    bool mythical;
}

-(void)setAttributes:(ECreatureType)type name:(NSString*)name isMythical:(bool)isMythical;

-(void)printName;

@end
