//
//  AddEventViewController.m
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "AddEventViewController.h"
#import "SavedEvent.h"


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
    // NSLog(@"keyboardWillShow was hit");
}

-(void)keyboardWillHide:(NSNotification *)notification
{
    // NSLog(@"keyboardWillHide was hit");
}

-(IBAction)onCloseKeyboardClick:(id)sender
{
    // NSLog(@"Close keyboard was clicked");
    [eventText resignFirstResponder];
}

-(void) onLeftSwipe
{
    // NSLog(@"You swiped left.");
    // get eventText
    NSString *saveEventData = eventText.text;
    // NSLog(@"Event Data = %@", saveEventData);
    
    if (![eventText.text isEqual: @""])
    {
        // var to hold date
        NSString *dateString;
        
        // format date
        NSDateFormatter *dateFormatter;
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"MMM dd, YYYY HH:mm:ss a"];
        dateString = [dateFormatter stringFromDate:eventDate.date];
        // NSLog(@"Event Date = %@", dateString);
        
        // create a single string
        NSString *combinedDataString = [NSString stringWithFormat:@"New Event: %@ \n%@", saveEventData, dateString];
        NSLog(@"My string = %@", combinedDataString);
        
        // save information to singleton
        SavedEvent* sharedSingleton = [SavedEvent GetInstance];
        [sharedSingleton saveUserData:combinedDataString];
      
        
        // dismiss view controller
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
    else
    {
        UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Event Title Error"
                                                          message:@"You must provide a \ntitle for this event."
                                                         delegate:self
                                                cancelButtonTitle:@"OK"
                                                otherButtonTitles:@"Cancel", nil];
        [message show];
    }
}

// UIAlertViewDelegate tutorial at mobile.tutsplus.com
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([title isEqualToString:@"OK"])
    {
        // NSLog(@"You pressed OK.");
        // pressing ok will close the alert view and allow event title to be changed.
    }
    else if ([title isEqualToString:@"Cancel"])
    {
        // NSLog(@"You pressed Cancel.");
        // pressing cancel will provide escape hatch and close AddEventViewController.
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
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
