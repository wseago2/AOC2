//
//  CreatureFactory.h
//  factoryTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseCreature.h"

typedef enum{
    UNICORN = 0,
    DRAGON
} myCreature;

@interface CreatureFactory : NSObject

+(BaseCreature*)GetCreature:(int)creatureType;

@end
