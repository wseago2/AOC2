//
//  UnicornCreature.m
//  inheritanceTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "UnicornCreature.h"
#import "BaseCreature.h"

@implementation UnicornCreature

-(id) init
{
    if (self = [super init])
    {
        [self setAttributes:CREATURETYPE_UNICORN name:@"Unicorn" isMythical:true];
    }
    return self;
}

-(void)printName
{
    [super printName];
    NSLog(@"The name of this creature is = %@", creatureName);
}
@end
