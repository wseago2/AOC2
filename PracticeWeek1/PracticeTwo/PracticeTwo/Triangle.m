//
//  Triangle.m
//  PracticeTwo
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "Triangle.h"
#import "Shape.h"

@implementation Triangle

-(id)init
{
    if (self = [super init])
    {
        [self setNumSides:3];
    }
    return self;
}

@end
