

//
//  DKTViewController.h
//  Rating
//
//  Created by durgesh trivedi on 10/27/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKTGesturesViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *players;

- (NSMutableArray *)playersWithRating:(int)rating;
@end
