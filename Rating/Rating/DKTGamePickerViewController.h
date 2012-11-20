//
//  DKTGamePickerViewController.h
//  Rating
//
//  Created by durgesh trivedi on 10/31/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DKTGamePickerViewController;

@protocol GamePickerViewControllerDelegate <NSObject>
- (void)gamePickerViewController:
(DKTGamePickerViewController *)controller
                   didSelectGame:(NSString *)theGame;
@end



@interface DKTGamePickerViewController : UITableViewController
{
    NSArray* games;
}

@property (nonatomic,weak) id<GamePickerViewControllerDelegate> delegate;
@property(nonatomic,weak) NSString *game;
@end
