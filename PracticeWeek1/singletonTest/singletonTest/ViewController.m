//
//  ViewController.m
//  singletonTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "SettingsManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    SettingsManager *settingsManager = [SettingsManager GetInstance];
    [settingsManager printSettings];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
