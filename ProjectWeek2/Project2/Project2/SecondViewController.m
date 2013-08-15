//
//  SecondViewController.m
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    // set background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onBack:(id)sender
{
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

// email from iOS button researched from AppCoda
// iOS programming 101 tutorial "Send mail from iPhone app"
- (IBAction)onMail:(id)sender
{
    NSString *emailTitle = @"Email button works!";
    NSString *messageBody = @"Your email button on your AOC2 Project works!";
    NSArray *toRecipients = [NSArray arrayWithObject:@"wseago2@fullsail.edu"];
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setSubject:emailTitle];
    [mc setMessageBody:messageBody isHTML:NO];
    [mc setToRecipients:toRecipients];
    [self presentViewController:mc animated:YES completion:NULL];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
            
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved.");
            break;
            
        case MFMailComposeResultSent:
            NSLog(@"Mail sent.");
            break;
            
        case MFMailComposeResultFailed:
            NSLog(@"Mail send failure: %@",[error localizedDescription]);
            break;
            
        default:
            break;
    }
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
