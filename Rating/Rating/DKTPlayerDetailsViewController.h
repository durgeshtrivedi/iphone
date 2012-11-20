//
//  DKTPlayerDetailsViewController.h
//  Rating
//
//  Created by durgesh trivedi on 10/30/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DKTGamePickerViewController.h"
@class DKTPlayerDetailsViewController;
@class Players;
@protocol DKTPlayerDetailsViewControllerDelegate <NSObject>


-(void)playerDetailsViewControlDidCancel:(DKTPlayerDetailsViewController*) viewControl;
-(void)playerDetailsViewControl:(DKTPlayerDetailsViewController*) viewControl addPlayer:(Players*)plyer;
-(void)playerDetailsViewController:(DKTPlayerDetailsViewController *)controller didEditPlayer:(Players *)player;
@end

@interface DKTPlayerDetailsViewController : UITableViewController

@property (nonatomic,weak)id<DKTPlayerDetailsViewControllerDelegate> delegate;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nameTextField;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) Players *playerToEdit;

@end
