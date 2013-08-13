//
//  Square.m
//  PracticeTwo
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "Square.h"
#import "Shape.h"

@implementation Square

-(id)init
{
    if (self = [super init])
    {
        [self setNumSides:4];
    }
    return self;
}

@end
