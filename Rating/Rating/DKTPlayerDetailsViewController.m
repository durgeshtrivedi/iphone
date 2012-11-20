//
//  DKTPlayerDetailsViewController.m
//  Rating
//
//  Created by durgesh trivedi on 10/30/12.
//  Copyright (c) 2012 durgesh trivedi. All rights reserved.
//

#import "DKTPlayerDetailsViewController.h"
#import "Players.h"
#import "DKTGamePickerViewController.h"
@interface DKTPlayerDetailsViewController ()

@end

@implementation DKTPlayerDetailsViewController
{
    NSString* game;
}
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.playerToEdit != nil)
    {
        self.title = @"Edit Player";
        self.nameTextField.text = self.playerToEdit.name;
        game = self.playerToEdit.game;
    }
    
    self.detailLabel.text = game;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    if(indexPath.section==0)
    {
        [self.nameTextField becomeFirstResponder];
    }
}

-(void) cancel:(id)sender
{
    [self.delegate playerDetailsViewControlDidCancel:self];
}
-(void) done:(id)sender
{
    if (self.playerToEdit!=nil) {
        self.playerToEdit.name = self.nameTextField.text;
        self.playerToEdit.game = game;
        [self.delegate playerDetailsViewController:self didEditPlayer:self.playerToEdit];
    }
    else{
    Players* player =[[Players alloc] init];
    player.name =self.nameTextField.text;
    player.game =game;
    player.rating=1;
    [self.delegate playerDetailsViewControl:self addPlayer:player];
    }
}

-(id) initWithCoder:(NSCoder *)aDecoder
{
    if (self=[super initWithCoder:aDecoder]) {
        NSLog(@"init PlayerDetailsViewController");
        game = @"Chess";
    }
    return self;
}

-(void)dealloc
{
    NSLog(@"dealloc PlayerDetailsViewController");
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"PickGame"])
    {
        DKTGamePickerViewController *gamePicker=segue.destinationViewController;
        gamePicker.delegate =self;
        gamePicker.game=game;
    }
    
   
}

- (void)gamePickerViewController:(DKTGamePickerViewController *)controller
                   didSelectGame:(NSString *)theGame
{
    game = theGame;
    self.detailLabel.text = theGame;
    [self.navigationController popViewControllerAnimated:YES];
}

@end
