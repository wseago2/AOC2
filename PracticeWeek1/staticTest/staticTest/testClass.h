//
//  testClass.h
//  staticTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface testClass : NSObject
{
    int temp;
}

// instance method requires instantiation of an object.
-(void)setTemp:(NSInteger)tempValue;

// static methods do not require instantiation of objects.
// static methods do not have access to variables defined in the class.
+(void)printValue:(NSInteger) value;

@end
