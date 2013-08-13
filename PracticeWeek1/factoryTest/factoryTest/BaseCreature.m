//
//  BaseCreature.m
//  factoryTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "BaseCreature.h"

@implementation BaseCreature

-(id)initWithDetails:(int)type name:(NSString*)name
{
    if (self = [super init])
    {
        _type = type;
        _name = name;
    }
    return self;
}

-(void)printName
{
    //NSLog(@"I am a %@", _name);
    NSLog(@"I am a %@ with a type of %i", _name, _type);
}

@end
