//
//  AddEventViewController.h
//  Project4
//
//  Created by Wesley Seago on 8/27/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddEventViewController : UIViewController <UIGestureRecognizerDelegate, UIAlertViewDelegate>
{
    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
}

-(IBAction)onCloseKeyboardClick:(id)sender;

-(void) onLeftSwipe;
@end
