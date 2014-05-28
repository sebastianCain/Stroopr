//
//  Quiz3ViewController.h
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/25/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface Quiz3ViewController : UIViewController{
	SystemSoundID PlaySoundID1;
	SystemSoundID PlaySoundID2;
}
@property (strong, nonatomic) IBOutlet UIButton *answerButton1;
@property (strong, nonatomic) IBOutlet UIButton *answerButton2;
@property (strong, nonatomic) IBOutlet UIButton *answerButton3;
@property (strong, nonatomic) IBOutlet UIButton *answerButton4;
@property (strong, nonatomic) IBOutlet UILabel *scoreDisplay;
@property (strong, nonatomic) IBOutlet UIButton *nextArrow;
@property (strong, nonatomic) IBOutlet NSTimer * timer30;
@property (strong, nonatomic) IBOutlet UILabel *secondsDisplay;
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) NSString *correctValue2;
@property (nonatomic) int score;
@property (nonatomic) int highScore;
@property (nonatomic) int setVolumeCopy2;
@end
