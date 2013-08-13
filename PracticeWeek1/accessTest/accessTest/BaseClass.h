//
//  BaseClass.h
//  accessTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseClass : NSObject
{
@private
    int temp;
    NSString *nameString;
}

@property
    int temp;
//@property (readonly)int temp;
//@property (readwrite)int temp;

@property (strong) NSString *nameString;
//@property (weak) NSString *nameString;
// must use strong reference because this is a pointer, not the variable itself.
// weak will only remain active until the object is released.

@end
