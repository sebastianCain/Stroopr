//
//  HomeViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "HomeViewController.h"
#import "ChooseStageViewController.h"


@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize titleLabel, setVolumeCopy1, highscore1, highscore2, highscore3, howToPlayLabel;

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

// In a storyboard-based application, you will often want to do a little preparation before navigation
/*-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	if ([segue.identifier isEqualToString:@"homeToChoose"]) {
		ChooseStageViewController *csvc = [segue destinationViewController];
		csvc.setVolumeCopyc = setVolumeCopy1;
		csvc.highscore1 = highscore1;
		csvc.highscore2 = highscore2;
		csvc.highscore3 = highscore3;
	}
}*/


@end
