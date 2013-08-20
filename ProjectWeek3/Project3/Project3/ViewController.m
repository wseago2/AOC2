//
//  ViewController.m
//  Project3
//
//  Created by Wesley Seago on 8/18/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "AddEventViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    eventTextView.text = @"All the events go here...\n";
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    AddEventViewController *viewController = [[AddEventViewController alloc]initWithNibName:@"AddEventView" bundle:nil];
    if (viewController != nil)
    {
        // set delegate for AddEventViewController here
        viewController.delegate = self;
        [self presentViewController:viewController animated:YES completion:nil];
    }
}

- (void)dealloc {
    [UIViewController release];
    [super dealloc];
}

// delegate method here
-(void)DidSave:(NSString *)saveEventData saveEventDate:(NSString *)dateString
{
    // remove initial text from eventTextView
    if ([eventTextView.text isEqualToString:@"All the events go here...\n"])
    {
        eventTextView.text = [NSString stringWithFormat:@"New Event: %@ \n%@ \n", saveEventData, dateString];
    }
    else
    {
        // append additional events here
        eventTextView.text = [eventTextView.text stringByAppendingFormat:@"\n New Event: %@ \n %@ \n", saveEventData, dateString];
    }
}

@end
