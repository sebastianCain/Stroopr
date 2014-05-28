//
//  ScoreViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "ScoreViewController.h"
#import "HomeViewController.h"

@interface ScoreViewController ()

@end

@implementation ScoreViewController

@synthesize goodJobLabel, yourScoreWasLabel, scoreLabel, scoreCopy, highScore, setVolumeCopy3;

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
    
	if (scoreCopy > highScore) {
		highScore = scoreCopy;
	}
	scoreLabel.text = [NSString stringWithFormat:@"%d", scoreCopy];
	goodJobLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:32];
	yourScoreWasLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	scoreLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:60];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"score1ToHome"]) {
		HomeViewController *hvc = [segue destinationViewController];
		hvc.highscore1 = highScore;
		hvc.setVolumeCopy1 = setVolumeCopy3;
	}
    // Pass the selected object to the new view controller.
}


@end
