//
//  TestClass.m
//  newPrivateMethod
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "TestClass.h"

@interface TestClass ()

-(NSInteger)actuallyDidAdd:(NSInteger)one two:(NSInteger)two;

@end

@implementation TestClass

-(NSInteger)AddNums:(NSInteger)one two:(NSInteger)two
{
    return [self actuallyDidAdd:one two:two];
}

// actuallyDidAdd is not available from ViewController
// viewController calls AddNums, and AddNums calls actuallyDidAdd
-(NSInteger)actuallyDidAdd:(NSInteger)one two:(NSInteger)two
{
    return one + two;
}

@end
