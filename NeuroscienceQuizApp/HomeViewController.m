//
//  HomeViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "HomeViewController.h"
#import "ChooseStageViewController.h"
#import "SettingsViewController.h"
#import "HowToViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize titleLabel, howToPlayLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
	titleLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size: 48];
	howToPlayLabel.titleLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size: 24];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
