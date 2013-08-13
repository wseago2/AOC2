//
//  testClass.m
//  staticTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "testClass.h"

@implementation testClass

-(void)setTemp:(NSInteger)tempValue
{
    temp = tempValue;
}

+(void)printValue:(NSInteger) value
{
    NSLog(@"value = %d", value);
}
@end
