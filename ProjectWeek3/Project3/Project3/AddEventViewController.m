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
        
    }
}

@end

// notes for Google hangout.

// Save button should not be enabled until text field has changed.
// Can't do this if I add the nil condition to the save event.

// Closing addEventView is part of save event. If user wants to cancel
// creating event, there will be no way to get back to main viewController.
// Event information is a required field. I could add nil condition to the save
// function, allowing the AddEventView to be dismissed but not to save if
// eventText = nil.

// Close keyboard should be enabled only when the keyboard is displayed.
// I can do this with keyboardWillShow and keyboardWillHide.

// Figure out how to pass data to the main view controller.
// Research custom delegate for passing data between views.
// I need to write save method.

// I need to add a minimum date and time of the current date and time
// to the datePicker.

// I need to format the date and time to get rid of the offsets.
// Check into getting the time to display for the current time zone instead of Greenwich time.

// Time permitting, try to make it look like the one in the Pro task app article.