//
//  Shape.h
//  PracticeTwo
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    SHAPETYPE_TRIANGLE=0,
    SHAPETYPE_SQUARE
} EShapeType;

@interface Shape : NSObject
{
    EShapeType shapeType;
    
@protected
    int numSides;
}

-(void)setNumSides:(EShapeType)sides;

-(void)printNumSides;

@end
