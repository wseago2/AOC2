//
//  ViewController.m
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController



-(void) onRightSwipe
{
    NSLog(@"You swiped right.");
    AddEventViewController *viewController = [[AddEventViewController alloc]initWithNibName:@"AddEventViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentViewController:viewController animated:YES completion:nil];
    }
}


- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector (onRightSwipe)];
    swipeRight.numberOfTouchesRequired = 1;
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swipeRight];

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onSave:(id)sender
{
    NSLog(@"You pressed save");
}


@end
