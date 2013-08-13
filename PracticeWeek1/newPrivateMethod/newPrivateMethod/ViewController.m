//
//  ViewController.m
//  newPrivateMethod
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "TestClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    TestClass *test = [[TestClass alloc] init];
    if (test != nil)
    {
        NSInteger result = [test AddNums:5 two:3];
        NSLog(@"Result = %d", result);
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
