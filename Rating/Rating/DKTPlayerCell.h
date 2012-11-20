//
//  DKTPlayerCell.h
//  Rating
//
//  Created by durgesh trivedi on 10/29/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DKTPlayerCell : UITableViewCell
@property (nonatomic,strong) IBOutlet UILabel* name;
@property (nonatomic,strong) IBOutlet UILabel* game;
@property (nonatomic,strong) IBOutlet UIImageView *ratingImageView;
@end
