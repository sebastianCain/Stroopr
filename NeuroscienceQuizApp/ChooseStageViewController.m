//
//  ChooseStageViewController.m
//  Stroopr
//
//  Created by Sebastian Cain on 5/25/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "ChooseStageViewController.h"
#import "QuizViewController.h"
#import "Quiz2ViewController.h"
#import "Quiz3ViewController.h"
#import "SettingsViewController.h"

@interface ChooseStageViewController ()

@end

@implementation ChooseStageViewController

@synthesize chooseLevelLabel;

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
    [super viewDidLoad];
	chooseLevelLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
