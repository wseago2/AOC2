//
//  BaseCreature.h
//  factoryTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCreature : NSObject
{
    int _type;
    
    NSString *_name;
}

-(id)initWithDetails:(int)type name:(NSString*)name;
-(void)printName;

@end
