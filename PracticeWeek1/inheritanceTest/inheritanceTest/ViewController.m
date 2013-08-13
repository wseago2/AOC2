//
//  ViewController.m
//  inheritanceTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "BaseCreature.h"
#import "UnicornCreature.h"
#import "BearCreature.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UnicornCreature *unicornCreature = [[UnicornCreature alloc] init];
    if (unicornCreature != nil)
    {
        [unicornCreature printName];
    }
    
    BearCreature *bearCreature = [[BearCreature alloc] init];
    if (bearCreature != nil)
    {
        [bearCreature printName];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
