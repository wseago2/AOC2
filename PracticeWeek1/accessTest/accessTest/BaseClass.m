//
//  BaseClass.m
//  accessTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "BaseClass.h"

@implementation BaseClass

//creates getter and setter methods
@synthesize temp, nameString;

-(id)init
{
    if (self = [super init])
    {
        temp = 3;
        nameString = @"hello";
    }
    return self;
}

@end
