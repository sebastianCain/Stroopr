//
//  ChooseStageViewController.h
//  Stroopr
//
//  Created by Sebastian Cain on 5/25/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChooseStageViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *chooseLevelLabel;
@property (strong, nonatomic) IBOutlet UILabel *s1;
@property (strong, nonatomic) IBOutlet UILabel *s1h;
@property (strong, nonatomic) IBOutlet UILabel *s2;
@property (strong, nonatomic) IBOutlet UILabel *s2h;
@property (strong, nonatomic) IBOutlet UILabel *s3;
@property (strong, nonatomic) IBOutlet UILabel *s3h;
@property (nonatomic) int setVolumeCopyc;
@property (nonatomic) int highscore1;
@property (nonatomic) int highscore2;
@property (nonatomic) int highscore3;
@end
