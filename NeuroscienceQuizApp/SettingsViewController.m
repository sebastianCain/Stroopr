//
//  SettingsViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "SettingsViewController.h"
#import "HomeViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

@synthesize settingsLabel, aboutTextView,aboutLabel;

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
	settingsLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	aboutLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	aboutTextView.editable = NO;
	aboutTextView.font = [UIFont fontWithName:@"Ubuntu-Light" size:16];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
