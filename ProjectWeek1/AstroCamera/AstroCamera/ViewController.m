//
//  ViewController.m
//  AstroCamera
//
//  Created by Wesley Seago on 8/9/13.
//  Copyright (c) 2013 Wesley Seago. All rights reserved.
//

#import "ViewController.h"
#import "cameraFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //set background
    self.view.backgroundColor = [UIColor colorWithRed:0.52 green:0.06 blue:0.06 alpha:1];
    titleTextLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 20, 320, 62)];
    if (titleTextLabel != nil)
    {
        titleTextLabel.backgroundColor = [UIColor colorWithRed:0.95 green:0.76 blue:0.20 alpha:1];
        titleTextLabel.text = @"Astrophotography Camera Factory";
        titleTextLabel.textColor = [UIColor blackColor];
        titleTextLabel.textAlignment = NSTextAlignmentCenter;
    }
    [self.view addSubview:titleTextLabel];
    
    
    // set planetary camera labels
    baseCamera *planet = [cameraFactory createNewCamera:PLANETARY];
    if (planet != nil)
    {
        planetaryLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 102, 320, 48)];
        planetaryLabel.backgroundColor = [UIColor whiteColor];
        planetaryLabel.numberOfLines = 2;
        [planet calculateTotalExposureTime];
        planetaryLabel.text = [NSString stringWithFormat:@"%@ PlanetCam Total Time:\n%i seconds.", planet.imagingType, planet.totalExposureTimeSeconds];
        customPlanetaryLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 160, 320, 48)];
        customPlanetaryLabel.backgroundColor = [UIColor whiteColor];
        customPlanetaryLabel.numberOfLines = 2;
        customPlanetaryLabel.text = [NSString stringWithFormat:@"This camera will shoot %i frames \nin 3 minutes.", planet.totalFrames];
        [self.view addSubview:planetaryLabel];
        [self.view addSubview:customPlanetaryLabel];
    }
    
    
    // set deep space camera
    baseCamera *deepsky = [cameraFactory createNewCamera:DEEPSPACE];
    if (deepsky != nil)
    {
        deepSpaceLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 218, 320, 48)];
        deepSpaceLabel.backgroundColor = [UIColor whiteColor];
        deepSpaceLabel.numberOfLines=2;
        [deepsky calculateTotalExposureTime];
        deepSpaceLabel.text = [NSString stringWithFormat:@"%@ DeepSkyCam Total Time:\n%i seconds.",deepsky.imagingType, deepsky.totalExposureTimeSeconds];
        customDeepSpaceLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 276, 320, 48)];
        customDeepSpaceLabel.backgroundColor = [UIColor whiteColor];
        customDeepSpaceLabel.numberOfLines = 2;
        customDeepSpaceLabel.text = [NSString stringWithFormat:@"This camera will track without guiding \nfor %i seconds.", deepsky.totalUnguidedTimeSeconds];
        [self.view addSubview:deepSpaceLabel];
        [self.view addSubview:customDeepSpaceLabel];
    }
    
    
    // set slr camera
    baseCamera *slr = [cameraFactory createNewCamera:SLR];
    if (slr != nil)
    {
        SLRLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 334, 320, 48)];
        SLRLabel.backgroundColor = [UIColor whiteColor];
        SLRLabel.numberOfLines=2;
        [slr calculateTotalExposureTime];
        SLRLabel.text = [NSString stringWithFormat:@"%@ SLR Cam Total Time:\n%i seconds.",slr.imagingType, slr.totalExposureTimeSeconds];
        customSLRLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 392, 320, 48)];
        customSLRLabel.backgroundColor = [UIColor whiteColor];
        customSLRLabel.numberOfLines = 2;
        customSLRLabel.text = [NSString stringWithFormat:@"In high ISO mode, reduce exposure time \nto %i seconds with this camera.", slr.totalHighISOTime];
        [self.view addSubview:SLRLabel];
        [self.view addSubview:customSLRLabel];
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
