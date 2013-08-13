//
//  Shape.m
//  PracticeTwo
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "Shape.h"



@implementation Shape

-(void)setNumSides:(EShapeType)sides
{
    numSides = sides;
   
}

-(void)printNumSides
{
    NSLog(@"The number of sides = %i", numSides);
}

@end
