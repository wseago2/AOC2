//
//  BaseCreature.m
//  inheritanceTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "BaseCreature.h"

@implementation BaseCreature

-(void)setAttributes:(ECreatureType)type name:(NSString*)name isMythical:(bool)isMythical
{
    mythical = isMythical;
    creatureName = name;
    creatureType = type;
}

-(void)printName
{
    NSLog(@"Name = %@", creatureName);
}
@end
