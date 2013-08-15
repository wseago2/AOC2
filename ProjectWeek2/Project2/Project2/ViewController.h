//
//  ViewController.h
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
// setup Outlets
    IBOutlet UIButton *planetButton;
    IBOutlet UIButton *deepSkyButton;
    IBOutlet UIButton *slrButton;
    IBOutlet UIStepper *stepperControl;
    IBOutlet UILabel *stepperLabel;
    IBOutlet UITextField *results;
}
// setup Actions
-(IBAction)onInfo:(id)sender;
-(IBAction)onColorChange:(id)sender;
-(IBAction)onStepperChange:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)onCalculate:(id)sender;


@end
