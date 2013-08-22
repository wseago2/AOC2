//
//  AddEventViewController.h
//  Project3
//
//  Created by Wesley Seago on 8/18/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AddEventViewDelegate <NSObject>
@required
-(void)DidSave:(NSString*)saveEventData saveEventDate:(NSString*)dateString;

@end

@interface AddEventViewController : UIViewController <UITextFieldDelegate, UIAlertViewDelegate>
{

    IBOutlet UITextField *eventText;
    IBOutlet UIDatePicker *eventDate;
    NSString *saveDate;
    
    // make sure it conforms to the protocol
    id<AddEventViewDelegate> delegate;
}

-(IBAction)onSave:(id)sender;
-(IBAction)onCloseKeyboardClick:(id)sender;
-(IBAction)onChange:(id)sender;

@property (strong) id<AddEventViewDelegate> delegate;


@end
