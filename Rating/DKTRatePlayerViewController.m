//
//  DKTRatePlayerViewController.m
//  Rating
//
//  Created by durgesh trivedi on 10/31/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import "DKTRatePlayerViewController.h"
#import "DKTRatePlayerViewController.h"
#import "Players.h"
@interface DKTRatePlayerViewController ()

@end

@implementation DKTRatePlayerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = self.player.name;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rateAction:(UIButton *)sender
{
    self.player.rating = sender.tag;
    [self.delegate ratePlayerViewController:self
                     didPickRatingForPlayer:self.player];
}
@end
