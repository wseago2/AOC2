//
//  ViewController.m
//  Practice6
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)onChange:(id)sender
{
    UIStepper *stepControl = (UIStepper*)sender;
    if (stepControl != nil)
    {
        int currentValue = stepperControl.value;
        NSLog(@"currentValue = %i", currentValue);
    }
}

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

@end
