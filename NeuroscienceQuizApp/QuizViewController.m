//
//  QuizViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "QuizViewController.h"
#import "ScoreViewController.h"
#import "HomeViewController.h"


@interface QuizViewController ()

@property (nonatomic, assign) int seconds;
@property (nonatomic, assign) int minutes;

@end

@implementation QuizViewController

@synthesize questionLabel, answerButton1,answerButton2, scoreDisplay, nextArrow, secondsDisplay, score;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
	[super viewDidLoad];
	
	questionLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:60];
	answerButton1.titleLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	answerButton2.titleLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	scoreDisplay.font = [UIFont fontWithName:@"Ubuntu-Light" size:96];
	nextArrow.hidden = YES;
	createQuestion(questionLabel, answerButton1, answerButton2);
	secondsDisplay.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	
	score = 0;
	
	self.timer30 = [NSTimer
						 scheduledTimerWithTimeInterval:1.0
						 target:self
						 selector:@selector(timerFireMethod:)
						 userInfo:nil
						 repeats:YES];
	self.seconds = 31;
	scoreDisplay.text = @"0";
	
	NSURL *SoundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"beep-07" ofType: @"mp3"]];
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL1, &PlaySoundID1);
	
	NSURL *SoundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"beep-05" ofType: @"mp3"]];
	AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL2, &PlaySoundID2);
}

void createQuestion(UILabel *x, UIButton *y, UIButton *z){
	int random1 = arc4random() % 4;
	int random2 = arc4random() % 4;
	
	if (random1 == 0) {
		x.text = @"blue";
		x.textColor = [UIColor blueColor];
	}else if (random1 == 1){
		x.text = @"blue";
		x.textColor = [UIColor greenColor];
	}else if (random1 == 2){
		x.text = @"green";
		x.textColor = [UIColor greenColor];
	}else if (random1 == 3){
		x.text = @"green";
		x.textColor = [UIColor blueColor];
	}
	
	if (random2 == 0) {
		[y setTitle:@"green" forState:UIControlStateNormal];
		[y setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
		[z setTitle:@"blue" forState:UIControlStateNormal];
		[z setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
	}else if (random2 == 1){
		[y setTitle:@"green" forState:UIControlStateNormal];
		[y setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[z setTitle:@"blue" forState:UIControlStateNormal];
		[z setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
	}else if (random2 == 2){
		[y setTitle:@"blue" forState:UIControlStateNormal];
		[y setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		[z setTitle:@"green" forState:UIControlStateNormal];
		[z setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
	}else{
		[y setTitle:@"blue" forState:UIControlStateNormal];
		[y setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
		[z setTitle:@"green" forState:UIControlStateNormal];
		[z setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
	}
}

NSString* findAnswer(UILabel *x){
	NSString *a;
	if (x.textColor == [UIColor greenColor]) {
		a = @"green";
	}else{
		a = @"blue";
	}
	return a;
}

- (IBAction)answerButton1pressed:(id)sender {
	if ([answerButton1.titleLabel.text isEqualToString: findAnswer(questionLabel)])  {
		score +=1;
		createQuestion(questionLabel, answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
		AudioServicesPlaySystemSound(PlaySoundID1);
	}else{
		score -=1;
		createQuestion(questionLabel, answerButton1, answerButton2);
		scoreDisplay.text =[NSString stringWithFormat:@"%d", score];
		AudioServicesPlaySystemSound(PlaySoundID2);
	}
	
}

- (IBAction)answerButton2pressed:(id)sender {
	if ([answerButton2.titleLabel.text isEqualToString: findAnswer(questionLabel)]) {
		score +=1;
		createQuestion(questionLabel, answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
		AudioServicesPlaySystemSound(PlaySoundID1);
		
	}else{
		score -=1;
		createQuestion(questionLabel, answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
		AudioServicesPlaySystemSound(PlaySoundID2);
	}
	
}

- (void) timerFireMethod:(NSTimer *) timer30
{
    self.seconds--;
    if (self.seconds == 0) {
		[self performSegueWithIdentifier:@"won1" sender:self];
	}
    
    self.secondsDisplay.text = [NSString stringWithFormat:@"Time: %d", self.seconds];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	if ([segue.identifier isEqualToString:@"won2"]) {
		ScoreViewController *svc = [segue destinationViewController];
		svc.scoreCopy = score;
	}
}


@end
