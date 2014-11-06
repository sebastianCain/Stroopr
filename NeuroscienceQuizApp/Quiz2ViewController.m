//
//  Quiz2ViewController.m
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import "Quiz2ViewController.h"
#import "Score2ViewController.h"
#import "HomeViewController.h"

@interface Quiz2ViewController ()

@property (nonatomic, assign) int seconds;
@property (nonatomic, assign) int minutes;

@end

@implementation Quiz2ViewController

@synthesize questionImage1, questionImage2, answerButton1,answerButton2, scoreDisplay, nextArrow, secondsDisplay, correctValue2, score;

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
	
	answerButton1.titleLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	answerButton2.titleLabel.font = [UIFont fontWithName:@"Ubuntu-Light" size:48];
	scoreDisplay.font = [UIFont fontWithName:@"Ubuntu-Light" size:96];
	secondsDisplay.font = [UIFont fontWithName:@"Ubuntu-Light" size:24];
	nextArrow.hidden = YES;
	createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
	
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

void createQuestion2(UIImageView *x1, UIImageView *x2, UIButton *y, UIButton *z){
	UIImage *image1 = [UIImage imageNamed:@"Previous-128.png"];
	UIImage *image2 = [UIImage imageNamed:@"Navigation-Right-128.png"];
	int random1 = arc4random() % 4;
	int random2 = arc4random() % 2;
	if (random1 == 0) {
		x1.hidden = NO;
		x1.image = [UIImage imageNamed:@"Previous-128.png"];
		x2.hidden = YES;
	}else if (random1 == 1){
		x1.hidden = NO;
		x1.image = [UIImage imageNamed:@"Navigation-Right-128.png"];
		x2.hidden = YES;
	}else if (random1 == 2){
		x2.hidden = NO;
		x2.image = [UIImage imageNamed:@"Previous-128.png"];
		x1.hidden = YES;
	}else if (random1 == 3){
		x2.hidden = NO;
		x2.image = [UIImage imageNamed:@"Navigation-Right-128.png"];
		x1.hidden = YES;
	}
	
	if(random2 == 0){
		[y setImage:image1 forState:UIControlStateNormal];
		[z setImage:image2 forState:UIControlStateNormal];
	}else if (random2 == 1){
		[y setImage:image2 forState:UIControlStateNormal];
		[z setImage:image1 forState:UIControlStateNormal];
	}
}

NSString* createQuestion4(UIImageView*x){
	NSString *a;
	if (x.hidden == YES) {
		a = @"right";
	}else{
		a = @"left";
	}
	return a;
}


NSString* createQuestion7(UIImageView*x){
	NSString *a;
	if (x.image == [UIImage imageNamed:@"Previous-128.png"]) {
		a = @"out";
	}else{
		a = @"in";
	}
	return a;
}

- (IBAction)answerButton1pressed:(id)sender {
	if ([createQuestion4(questionImage1) isEqualToString:@"right"] && [createQuestion7(answerButton1.imageView) isEqualToString: @"in"])  {
		if(sound){
			AudioServicesPlaySystemSound(PlaySoundID1);
		}
		score +=1;
		createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
		
	}else if ([createQuestion4(questionImage1) isEqualToString:@"left"] && [createQuestion7(answerButton1.imageView) isEqualToString: @"out"])  {
		if(sound){
			AudioServicesPlaySystemSound(PlaySoundID1);
		}
		score +=1;
		createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else{
		if(sound){
			AudioServicesPlaySystemSound(PlaySoundID2);
		}
		score -=1;
		createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
		scoreDisplay.text =[NSString stringWithFormat:@"%d", score];
	}
}

- (IBAction)answerButton2pressed:(id)sender {
	if ([createQuestion4(questionImage1) isEqualToString:@"left" ] && [createQuestion7(answerButton1.imageView) isEqualToString: @"in"]) {
		if(sound){
			AudioServicesPlaySystemSound(PlaySoundID1);
		}
		score +=1;
		createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else if ([createQuestion4(questionImage1) isEqualToString:@"right" ] && [createQuestion7(answerButton1.imageView) isEqualToString: @"out"]) {
		if(sound){
			AudioServicesPlaySystemSound(PlaySoundID1);
		}
		score +=1;
		createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}else{
		if(sound){
			AudioServicesPlaySystemSound(PlaySoundID2);
		}
		score -=1;
		createQuestion2(questionImage1, questionImage2 , answerButton1, answerButton2);
		scoreDisplay.text = [NSString stringWithFormat:@"%d", score];
	}
}

- (void) timerFireMethod:(NSTimer *) timer30
{
    self.seconds--;
    if (self.seconds == 0) {
		[self performSegueWithIdentifier:@"won2" sender:self];
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
	if ([segue.identifier isEqualToString:@"won2"]) {
		Score2ViewController *svc = [segue destinationViewController];
		svc.scoreCopy = score;
	}
}

@end;
