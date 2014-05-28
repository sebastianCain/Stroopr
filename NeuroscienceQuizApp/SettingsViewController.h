//
//  SettingsViewController.h
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *settingsLabel;
@property (strong, nonatomic) IBOutlet UISwitch *volumeSwitch;
@property (strong, nonatomic) IBOutlet UITextView *aboutTextView;
@property (nonatomic) int setVolume;
@property (strong, nonatomic) IBOutlet UILabel *aboutLabel;

@end