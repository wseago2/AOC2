//
//  ViewController.m
//  ClassTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "TextClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //instantiate the class object
    textClass = [[TextClass alloc] init];
    
    //create the label
    textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0,0,320,100)];
    
    //call getText method to populate label
    textLabel.text = [textClass getText];
    
    //show the label
    [self.view addSubview:textLabel];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
