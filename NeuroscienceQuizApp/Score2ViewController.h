//
//  Score2ViewController.h
//  NeuroscienceQuizApp
//
//  Created by Sebastian Cain on 5/24/14.
//  Copyright (c) 2014 ASX Software, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Score2ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *goodJobLabel;
@property (strong, nonatomic) IBOutlet UILabel *yourScoreWasLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;


@property (nonatomic) int scoreCopy;

@end
