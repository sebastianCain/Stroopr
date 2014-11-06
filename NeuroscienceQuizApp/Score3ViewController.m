//
//  Score3ViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/25/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "Score3ViewController.h"
#import "HomeViewController.h"

@interface Score3ViewController ()

@end

@implementation Score3ViewController

@synthesize goodJobLabel, yourScoreWasLabel, scoreLabel, scoreCopy;

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
	
	goodJobLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:32];
	yourScoreWasLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	scoreLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:60];
	scoreLabel.text = [NSString stringWithFormat:@"%d", scoreCopy];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
