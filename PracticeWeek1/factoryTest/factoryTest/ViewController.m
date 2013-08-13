//
//  ViewController.m
//  factoryTest
//
//  Created by Wesley Seago on 8/6/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "CreatureFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // CreatureFactory *creatureFactory = [[CreatureFactory alloc] init];
    
    BaseCreature *unicorn = [CreatureFactory GetCreature:UNICORN];
    
    if (unicorn != nil)
    {
        [unicorn printName];
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
