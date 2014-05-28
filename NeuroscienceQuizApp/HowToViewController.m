//
//  HowToViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/25/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "HowToViewController.h"

@interface HowToViewController ()

@end

@implementation HowToViewController

@synthesize howToPlayLabel, howToPlayTv;

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
	howToPlayLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	howToPlayTv.font = [UIFont fontWithName:@"Ubuntu-Light" size:16];
	howToPlayTv.editable = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
