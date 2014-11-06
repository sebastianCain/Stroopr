//
//  Quiz2ViewController.h
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
@interface Quiz2ViewController : UIViewController{
	SystemSoundID PlaySoundID1;
	SystemSoundID PlaySoundID2;
	NSUserDefaults *defaults;
	NSUserDefaults *sound;
}

@property (strong, nonatomic) IBOutlet UIImageView *questionImage1;
@property (strong, nonatomic) IBOutlet UIImageView *questionImage2;
@property (strong, nonatomic) IBOutlet UIButton *answerButton1;
@property (strong, nonatomic) IBOutlet UIButton *answerButton2;
@property (strong, nonatomic) IBOutlet UILabel *scoreDisplay;
@property (strong, nonatomic) IBOutlet UIButton *nextArrow;
@property (strong, nonatomic) IBOutlet NSTimer * timer30;
@property (strong, nonatomic) IBOutlet UILabel *secondsDisplay;
@property (strong, nonatomic) NSString *correctValue2;
@property (nonatomic) int score;

@end
