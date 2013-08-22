//
//  AddEventViewController.m
//  Project3
//
//  Created by Wesley Seago on 8/18/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "AddEventViewController.h"
#import "ViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize delegate;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
        
    }
    return self;
}

- (void)viewDidLoad
{
    eventDate.minimumDate = [NSDate date];
//    NSLog(@"Minimum date = %@", eventDate.minimumDate);
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)keyboardWillShow:(NSNotification *)notification
{
//    NSLog(@"keyboardWillShow was hit");
}

-(void)keyboardWillHide:(NSNotification *)notification
{
//    NSLog(@"keyboardWillHide was hit");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onCloseKeyboardClick:(id)sender
{
    [eventText resignFirstResponder];
}

- (void)dealloc {
   
    [eventText release];
    [super dealloc];
}


-(IBAction)onChange:(id)sender
{
    NSLog(@"Current date selection = %@", eventDate.date);
}


-(IBAction)onSave:(id)sender
{
    // onSave method here
    UIButton *saveButton = (UIButton *)sender;
    if (saveButton != nil)
    {
        // get eventText text
        NSString *saveEventData = eventText.text;
        NSLog(@"saveEventData.text = %@", saveEventData);
        
        if (![eventText.text isEqual: @""])
        {
            // create string for datePicker value
            NSString *dateString;
        
            // format datePickerValue
            NSDateFormatter *dateFormatter;
            dateFormatter = [[NSDateFormatter alloc] init];
            [dateFormatter setDateFormat:@"MMM dd, YYYY HH:mm:ss a"];
            dateString = [dateFormatter stringFromDate:eventDate.date];
            NSLog(@"dateString = %@", dateString);
        
            // send values
            [delegate DidSave:saveEventData saveEventDate:dateString];
        
            // close AddEventViewController
            [self dismissViewControllerAnimated:TRUE completion:nil];
        } else
        {
            UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Event Title Error"
                                    message:@"You must provide a \ntitle for this event."
                                    delegate:self
                                    cancelButtonTitle:@"OK"
                                    otherButtonTitles:@"Cancel", nil];
                [message show];
            }
        
    }
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"OK"])
    {
        NSLog(@"You pressed OK.");
        // pressing ok will close the alert view and allow eventTitle to be changed.
    }
    else if ([title isEqualToString:@"Cancel"])
    {
        NSLog(@"You pressed Cancel.");
        // pressing cancel will provide escape hatch and close AddEventViewController.
        [self dismissViewControllerAnimated:TRUE completion:nil];
    }
}

@end
