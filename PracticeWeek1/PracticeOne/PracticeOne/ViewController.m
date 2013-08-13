//
//  ViewController.m
//  PracticeOne
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "MyNewClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    MyNewClass *newClass = [[MyNewClass alloc] init];
    if (newClass != nil)
    {
        NSLog(@"myInt = %i", newClass.myInt);
        newClass.myInt = 456;
        NSLog(@"myInt = %i", newClass.myInt);
        
        NSLog(@"myFloat = %f", newClass.myFloat);
        newClass.myFloat = 456.725f;
        NSLog(@"myFloat = %f", newClass.myFloat);
        
        NSLog(@"myBool = %d", newClass.myBool);
        newClass.myBool = NO;
        NSLog(@"myBool = %d", newClass.myBool);
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
