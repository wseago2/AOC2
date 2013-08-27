//
//  AddEventViewController.m
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController


-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    }
    return self;
}

-(void)keyboardWillShow:(NSNotification *)notification
{
    NSLog(@"keyboardWillShow was hit");
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    NSLog(@"keyboardWillHide was hit");
}

-(IBAction)onCloseKeyboardClick:(id)sender
{
    NSLog(@"Close keyboard was clicked");
    [eventText resignFirstResponder];
}

-(void) onLeftSwipe
{
    NSLog(@"You swiped left.");
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

- (void)viewDidLoad
{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    eventDate.minimumDate = [NSDate date];
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector (onLeftSwipe)];
    swipeLeft.numberOfTouchesRequired = 1;
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeLeft];
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
