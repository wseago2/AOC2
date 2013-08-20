//
//  ViewController.h
//  Project3
//
//  Created by Wesley Seago on 8/18/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddEventViewController.h"

@interface ViewController : UIViewController <AddEventViewDelegate>
{
  
    IBOutlet UITextView *eventTextView;
    
}

-(IBAction)onClick:(id)sender;

@end
