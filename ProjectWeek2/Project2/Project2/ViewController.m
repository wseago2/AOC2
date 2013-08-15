//
//  ViewController.m
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "cameraFactory.h"

@interface ViewController ()

@end

@implementation ViewController

// camera buttons
-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil)
    {
        if (button.tag == 0)
        {
            planetButton.enabled = FALSE;
            deepSkyButton.enabled = TRUE;
            slrButton.enabled = TRUE;
            NSLog(@"You clicked the Planetary Camera Button!");
        } else if (button.tag == 1)
        {
            planetButton.enabled = TRUE;
            deepSkyButton.enabled = FALSE;
            slrButton.enabled = TRUE;
            NSLog(@"You clicked the Deep Sky Camera Button!");
        } else if (button.tag == 2)
        {
            planetButton.enabled = TRUE;
            deepSkyButton.enabled = TRUE;
            slrButton.enabled = FALSE;
            NSLog(@"You clicked the SLR Camera Button!");
        }
    }
}

// segment control onColorChange method
-(IBAction)onColorChange:(id)sender
{
    UISegmentedControl *segmentControl = (UISegmentedControl*)sender;
    if (segmentControl != nil)
    {
        int selectedIndex = segmentControl.selectedSegmentIndex;
        
        // NSLog(@"The selected color is %i.", selectedIndex);
        
        switch (selectedIndex)
        {
            case 0:
                self.view.backgroundColor = [UIColor lightGrayColor];
                
                break;
                
            case 1:
                self.view.backgroundColor = [UIColor redColor];
                break;
                
            default:
                self.view.backgroundColor = [UIColor blueColor];
                break;
        }
    }
}

-(IBAction)onStepperChange:(id)sender
{
    UIStepper *stepControl = (UIStepper*)sender;
    if (stepControl != nil)
    {
        int currentValue = stepControl.value;
        stepperLabel.text = [NSString stringWithFormat:@"Qty of Photos %d", currentValue];
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

-(IBAction)onInfo:(id)sender
{
    SecondViewController *viewController = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    if (viewController != nil)
    {
        [self presentViewController:viewController animated:TRUE completion:nil];
    }
}

- (void)dealloc {
    [stepperControl release];
    [super dealloc];
}
@end
