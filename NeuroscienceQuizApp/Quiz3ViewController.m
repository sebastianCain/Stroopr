//
//  Quiz3ViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/25/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "Quiz3ViewController.h"
#import "Score3ViewController.h"
#import "HomeViewController.h"

@interface Quiz3ViewController ()

@property (nonatomic, assign) int seconds;
@property (nonatomic, assign) int minutes;

@end

@implementation Quiz3ViewController

@synthesize answerButton1,answerButton2, answerButton3, answerButton4, scoreDisplay, nextArrow, secondsDisplay,correctValue2, score, questionLabel;

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
	answerButton1.backgroundColor = [UIColor redColor];
	answerButton2.backgroundColor = [UIColor yellowColor];
	answerButton3.backgroundColor = [UIColor blueColor];
	answerButton4.backgroundColor = [UIColor greenColor];
	questionLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	scoreDisplay.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	secondsDisplay.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	nextArrow.hidden = YES;
	createQuestion5(questionLabel);
	
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

void createQuestion5( UILabel *a){
	int random1 = arc4random() % 4;
	int random2 = arc4random() % 4;
	if (random1 == 0) {
		a.text = @"red";
	}else if (random1 == 1){
		a.text = @"yellow";
	}else if (random1 == 2){
		a.text = @"blue";
	}else if (random1 == 3){
		a.text = @"green";
	}
	if (random2 == 0) {
		a.textColor = [UIColor redColor];
	}else if (random2 == 1){
		a.textColor = [UIColor yellowColor];
	}else if (random2 == 2){
		a.textColor = [UIColor blueColor];
	}else if (random2 == 3){
		a.textColor = [UIColor greenColor];
	}
}

NSString* createQuestion6(UILabel *x){
	NSString *a;
	if ([x.text isEqualToString: @"red"]) {
		a = @"red";
	}else if ([x.text isEqualToString: @"yellow"]){
		a = @"yellow";
	}else if ([x.text isEqualToString: @"blue"]){
		a = @"blue";
	}else if ([x.text isEqualToString: @"green"]){
		a = @"green";
	}
	return a;
}

- (IBAction)answerButton1pressed:(id)sender {
	if ([createQuestion6(questionLabel) isEqualToString:@"red"])  {
		AudioServicesPlaySystemSound(PlaySoundID1);
		score +=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else{
		AudioServicesPlaySystemSound(PlaySoundID2);
		score -=1;
		createQuestion5(questionLabel);
		scoreDisplay.text =[NSString stringWithFormat:@"%d", score];
	}
}

- (IBAction)answerButton2pressed:(id)sender {
	if ([createQuestion6(questionLabel) isEqualToString:@"yellow"]) {
		AudioServicesPlaySystemSound(PlaySoundID1);
		
		score +=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else{
		AudioServicesPlaySystemSound(PlaySoundID2);
		score -=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}
}

- (IBAction)answerButton3pressed:(id)sender {
	if ([createQuestion6(questionLabel) isEqualToString:@"blue"]) {
		AudioServicesPlaySystemSound(PlaySoundID1);
		score +=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else{
		AudioServicesPlaySystemSound(PlaySoundID2);
		score -=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}
}

- (IBAction)answerButton4pressed:(id)sender {
	if ([createQuestion6(questionLabel) isEqualToString:@"green"]) {
		AudioServicesPlaySystemSound(PlaySoundID1);
		score +=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else{
		AudioServicesPlaySystemSound(PlaySoundID2);
		score -=1;
		createQuestion5(questionLabel);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}
}

- (void) timerFireMethod:(NSTimer *) timer30
{
    self.seconds--;
    if (self.seconds == 0) {
		[self performSegueWithIdentifier:@"won3" sender:self];
	}
    
    self.secondsDisplay.text = [NSString stringWithFormat:@"Time: %d", self.seconds];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
	if ([segue.identifier isEqualToString:@"won3"]) {
		Score3ViewController *svc = [segue destinationViewController];
		svc.scoreCopy = score;
	}
}



@end
