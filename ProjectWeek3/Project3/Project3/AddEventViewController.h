//
//  AddEventViewController.h
//  Project3
//
//  Created by Wesley Seago on 8/18/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController
{

    IBOutlet UITextField *eventText;
}

-(IBAction)onSave:(id)sender;
-(IBAction)onCloseKeyboardClick:(id)sender;
-(IBAction)onChange:(id)sender;


@end
