//
//  CreatureFactory.m
//  factoryTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "CreatureFactory.h"
#import "BaseCreature.h"

@implementation CreatureFactory

+(BaseCreature*)GetCreature:(int)creatureType
{
    if (creatureType == UNICORN)
    {
        return [[BaseCreature alloc] initWithDetails:UNICORN name:@"unicorn"];
    }
    else if (creatureType == DRAGON)
    {
        return [[BaseCreature alloc] initWithDetails:DRAGON name:@"dragon"];
    }
    
    return nil;
}

@end
