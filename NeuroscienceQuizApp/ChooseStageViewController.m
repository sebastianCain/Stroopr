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

@synthesize chooseLevelLabel, s1, s1h, s2, s2h, s3, s3h, setVolumeCopyc, highscore1, highscore2, highscore3;

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
	NSArray *array = [[NSArray alloc]initWithObjects:s1, s1h, s2, s2h, s3, s3h, nil];
	for(UILabel *x in array ) {
		x.font = [UIFont fontWithName:@"Ubuntu-Light" size:20];
	}
	s1h.text = [NSString stringWithFormat:@"Highscore: %d", highscore1];
	s2h.text = [NSString stringWithFormat:@"Highscore: %d", highscore2];
	s3h.text = [NSString stringWithFormat:@"Highscore: %d", highscore3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	if ([segue.identifier isEqualToString: @"homeToQuiz1"]) {
		QuizViewController *qvc1 = [segue destinationViewController];
		qvc1.setVolumeCopy2 = setVolumeCopyc;
	} else if ([segue.identifier isEqualToString: @"homeToQuiz2"]) {
		Quiz2ViewController *qvc2 = [segue destinationViewController];
		qvc2.setVolumeCopy2 = setVolumeCopyc;
	} else if ([segue.identifier isEqualToString: @"homeToQuiz3"]) {
		Quiz3ViewController *qvc3 = [segue destinationViewController];
		qvc3.setVolumeCopy2 = setVolumeCopyc;
	} else if ([segue.identifier isEqualToString: @"homeToSettings"]) {
		SettingsViewController *svc = [segue destinationViewController];
		svc.setVolume = setVolumeCopyc;
	}
}

@end
