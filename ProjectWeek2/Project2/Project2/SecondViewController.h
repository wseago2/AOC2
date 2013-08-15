//
//  SecondViewController.h
//  Project2
//
//  Created by Wesley Seago on 8/13/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface SecondViewController : UIViewController <MFMailComposeViewControllerDelegate>

-(IBAction)onBack:(id)sender;
-(IBAction)onMail:(id)sender;

@end
