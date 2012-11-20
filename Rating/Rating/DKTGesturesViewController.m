//
//  DKTViewController.m
//  Rating
//
//  Created by durgesh trivedi on 10/27/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import "DKTGesturesViewController.h"
#import "DKTRankingViewController.h"
#import "Players.h"
@interface DKTGesturesViewController ()

@end

@implementation DKTGesturesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"BestPlayers"])
    {
        UINavigationController *naviation =segue.destinationViewController;
        DKTRankingViewController* rankingView =[[naviation viewControllers] objectAtIndex:0];
        rankingView.rankedPlayers =[self playersWithRating:5];
        rankingView.title= @"Best Players";
    }else if ([segue.identifier isEqualToString:@"WorstPlayers"])
    {
        UINavigationController *navigationController =
        segue.destinationViewController;
        DKTRankingViewController *rankingViewController =
        [[navigationController viewControllers] objectAtIndex:0];
        rankingViewController.rankedPlayers =
        [self playersWithRating:1];
        rankingViewController.title = @"Worst Players";
    }
}

- (NSMutableArray *)playersWithRating:(int)rating
{
    NSMutableArray *rankedPlayers =
    [NSMutableArray arrayWithCapacity:[self.players count]];
    for (Players *player in self.players)
    {
        if (player.rating == rating)
            [rankedPlayers addObject:player];
    }
    return rankedPlayers;
}
@end
