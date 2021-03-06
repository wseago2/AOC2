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
            planetButton.alpha = .3;
            deepSkyButton.enabled = TRUE;
            deepSkyButton.alpha = 1;
            slrButton.enabled = TRUE;
            slrButton.alpha = 1;
            results.text = @"Planetary Camera Selected";
            NSLog(@"You clicked the Planetary Camera Button!");
        }
        else if (button.tag == 1)
        {
            planetButton.enabled = TRUE;
            planetButton.alpha = 1;
            deepSkyButton.enabled = FALSE;
            deepSkyButton.alpha = .3;
            slrButton.enabled = TRUE;
            slrButton.alpha = 1;
            results.text = @"Deep Sky Camera Selected";
            NSLog(@"You clicked the Deep Sky Camera Button!");
        }
        else if (button.tag == 2)
        {
            planetButton.enabled = TRUE;
            planetButton.alpha = 1;
            deepSkyButton.enabled = TRUE;
            deepSkyButton.alpha = 1;
            slrButton.enabled = FALSE;
            slrButton.alpha = .3;
            results.text = @"SLR Camera Selected";
            NSLog(@"You clicked the SLR Camera Button!");
        }
        
        // allow keyboard to be hidden
        [results resignFirstResponder];
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
        
        // switch statement to set background color
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

// hook up the stepper control here
-(IBAction)onStepperChange:(id)sender
{
    UIStepper *stepControl = (UIStepper*)sender;
    if (stepControl != nil)
    {
        int currentValue = stepControl.value;
        stepperLabel.text = [NSString stringWithFormat:@"Qty of Photos %d", currentValue];
        NSLog(@"You clicked the stepper control.");
        // NSLog(@"The stepper control value is %d.", currentValue);
    }
}

// calculate button method
-(IBAction)onCalculate:(id)sender
{
    NSLog(@"You clicked the calculate button.");
    
    // create variables for stepper control input and text field output
    int stepperValue = stepperControl.value;
    int totalImagingTimeSeconds = 0;
    
    if (planetButton.enabled != TRUE)
    {
        baseCamera *planet = [cameraFactory createNewCamera:PLANETARY];
        NSLog(@"You created a planetary camera.");
        [planet calculateTotalExposureTime];
        NSLog(@"Planet Total Exposure Time = %i.", planet.totalExposureTimeSeconds);
        NSLog(@"Stepper Value = %i.", stepperValue);
        totalImagingTimeSeconds = (planet.totalExposureTimeSeconds * stepperValue);
        NSLog(@"Total Imaging Time = %i.", totalImagingTimeSeconds);
//        results.text = [NSString stringWithFormat:@"Total Imaging Time = %d Seconds.", totalImagingTimeSeconds];
        results.text = [NSString stringWithFormat:@"Total Imaging Time = %d Minutes.", totalImagingTimeSeconds/60];
    }
    else if (deepSkyButton.enabled != TRUE)
    {
        baseCamera *deepSky = [cameraFactory createNewCamera:DEEPSKY];
        NSLog(@"You created a Deep Sky camera.");
        [deepSky calculateTotalExposureTime];
        totalImagingTimeSeconds = (deepSky.totalExposureTimeSeconds * stepperValue);
//        results.text = [NSString stringWithFormat:@"Total Imaging Time = %d Seconds.", totalImagingTimeSeconds];
        results.text = [NSString stringWithFormat:@"Total Imaging Time = %d Minutes.", totalImagingTimeSeconds/60];
    }
    else if (slrButton.enabled != TRUE)
    {
        baseCamera *slr = [cameraFactory createNewCamera:SLR];
        NSLog(@"You created an SLR camera.");
        [slr calculateTotalExposureTime];
        totalImagingTimeSeconds = (slr.totalExposureTimeSeconds * stepperValue);
//        results.text = [NSString stringWithFormat:@"Total Imaging Time = %d Seconds.", totalImagingTimeSeconds];
        results.text = [NSString stringWithFormat:@"Total Imaging Time = %d Minutes.", totalImagingTimeSeconds/60];
    }
    else
    {
        results.text = @"Please select a camera type.";
    }
}

- (void)viewDidLoad
{
    // set initial background color
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// setup info button to call second view here
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
    [results release];
    [super dealloc];
}
@end
