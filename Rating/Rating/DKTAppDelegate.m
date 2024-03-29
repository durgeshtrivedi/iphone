//
//  DKTAppDelegate.m
//  Rating
//
//  Created by durgesh trivedi on 10/27/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import "DKTAppDelegate.h"
#import "DKTPlayersViewController.h"
#import "DKTGesturesViewController.h"

@implementation DKTAppDelegate
{
    NSMutableArray* myPlayers;
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    myPlayers =[[NSMutableArray alloc] initWithCapacity:20];
    Players *player = [[Players alloc] init];
    player.name = @"Bill Evans";
    player.game = @"Tic-Tac-Toe";
    player.rating = 4;
    [myPlayers addObject:player];
    player = [[Players alloc] init];
    player.name = @"Oscar Peterson";
    player.game = @"Spin the Bottle";
    player.rating = 5;
    [myPlayers addObject:player];
    player = [[Players alloc] init];
    player.name = @"Dave Brubeck";
    player.game = @"Texas Hold’em Poker";
    player.rating = 2;
    [myPlayers addObject:player];
    if (UI_USER_INTERFACE_IDIOM() != UIUserInterfaceIdiomPad) {
    UITabBarController *tabBarController =
    (UITabBarController *)self.window.rootViewController;
    UINavigationController *navigationController =
    [[tabBarController viewControllers] objectAtIndex:1];
    DKTPlayersViewController *playersViewController =
    [[navigationController viewControllers] objectAtIndex:0];
    playersViewController.players =myPlayers;
     // Override point for customization after application launch.
    
    DKTGesturesViewController *guesture =[[tabBarController viewControllers] objectAtIndex:0];
    guesture.players =myPlayers;
    }
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
