//
//  DKTRatePlayerViewController.h
//  Rating
//
//  Created by durgesh trivedi on 10/31/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Players;
@class DKTRatePlayerViewController;

@protocol DKTRatePlayerViewControllerDelegate <NSObject>
- (void)ratePlayerViewController:(DKTRatePlayerViewController *)controller didPickRatingForPlayer:(Players *)player;
@end
@interface DKTRatePlayerViewController : UIViewController

@property (nonatomic, weak)
id <DKTRatePlayerViewControllerDelegate> delegate;
@property (nonatomic, strong) Players *player;
- (IBAction)rateAction:(UIButton *)sender;


@end
