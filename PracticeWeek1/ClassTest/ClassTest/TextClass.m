//
//  TextClass.m
//  ClassTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "TextClass.h"

@implementation TextClass

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        //init here
        //set value of variables when instance is created
        intValue = 4;
        floatValue = 10.3f;
    }
    return self;
}

-(NSString*)getText
{
    //create method here
    text = [NSString stringWithFormat:@"int = %d, float = %f", intValue, floatValue];
    if (text != nil)
    {
        return text;
    }
    return nil;
}

@end
