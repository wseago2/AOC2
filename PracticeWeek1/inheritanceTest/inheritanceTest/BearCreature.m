//
//  BearCreature.m
//  inheritanceTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "BearCreature.h"

@implementation BearCreature

-(id) init
{
    if (self = [super init])
    {
        [self setAttributes:CREATURETYPE_BEAR name:@"Bear" isMythical:false];
    }
    return self;
}
@end
