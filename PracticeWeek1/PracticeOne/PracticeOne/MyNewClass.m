//
//  MyNewClass.m
//  PracticeOne
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "MyNewClass.h"

@implementation MyNewClass

@synthesize myInt, myFloat, myBool;

-(id)init
{
    if (self = [super init])
    {
        myInt = 5;
        myFloat = 10.5f;
        myBool = YES;
    }
    return self;
}

@end
