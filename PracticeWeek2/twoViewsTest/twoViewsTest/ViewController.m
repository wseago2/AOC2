//
//  ViewController.m
//  twoViewsTest
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// create onClick method
-(IBAction)onClick:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc]initWithNibName:@"SecondView" bundle:nil];
    if(viewController != nil)
    {
        // using presentViewController here instead of presentModalViewController.
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
}

@end
