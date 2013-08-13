//
//  ViewController.m
//  PracticeTwo
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "Shape.h"
#import "Triangle.h"
#import "Square.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // create Triangle object
    Triangle *triangle = [[Triangle alloc] init];
    if (triangle != nil)
    {
        [triangle printNumSides];
    }
    
    // create Square object
    Square *square = [[Square alloc] init];
    if (square != nil)
    {
        [square printNumSides];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
