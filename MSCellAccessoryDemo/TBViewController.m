//
//  TBViewController.m
//  MSCellAccessoryDemo
//
//  Created by SHIM MIN SEOK on 13. 6. 19..
//  Copyright (c) 2013 SHIM MIN SEOK. All rights reserved.
//

#import "TBViewController.h"
#import "MSCellAccessory.h"

@interface TBViewController ()

@end

@implementation TBViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 11;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    cell.textLabel.font = [UIFont systemFontOfSize:10.0];
    
    [self configureCell:cell indexPath:indexPath accessoryType:FLAT_DETAIL_DISCLOSURE];
//    [self configureCell:cell indexPath:indexPath accessoryType:FLAT_DETAIL_BUTTON];
//    [self configureCell:cell indexPath:indexPath accessoryType:FLAT_DISCLOSURE_INDICATOR];
//    [self configureCell:cell indexPath:indexPath accessoryType:FLAT_CHECKMARK];
//    [self configureCell:cell indexPath:indexPath accessoryType:FLAT_TOGGLE_INDICATOR];
    
    return cell;
}

- (void)configureCell:(UITableViewCell *)cell indexPath:(NSIndexPath *)indexPath accessoryType:(AccessoryType )accessoryType
{
    if(accessoryType == FLAT_DETAIL_DISCLOSURE)
    {
        if(indexPath.row == 0)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:255/255.0 green:17/255.0 blue:95/255.0 alpha:1.0], [UIColor colorWithWhite:0.9 alpha:1.0]]];
        }
        else if(indexPath.row == 1)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:208/255.0 green:44/255.0 blue:55/255.0 alpha:1.0], [UIColor colorWithWhite:0.8 alpha:1.0]]];
        }
        else if(indexPath.row == 2)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:245/255.0 green:142/255.0 blue:4/255.0 alpha:1.0], [UIColor colorWithWhite:0.7 alpha:1.0]]];
        }
        else if(indexPath.row == 3)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:230/255.0 green:241/255.0 blue:5/255.0 alpha:1.0], [UIColor colorWithWhite:0.6 alpha:1.0]]];
        }
        else if(indexPath.row == 4)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:202/255.0 green:190/255.0 blue:1/255.0 alpha:1.0], [UIColor colorWithWhite:0.5 alpha:1.0]]];
        }
        else if(indexPath.row == 5)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:140/255.0 green:255/255.0 blue:39/255.0 alpha:1.0], [UIColor colorWithWhite:0.4 alpha:1.0]]];
        }
        else if(indexPath.row == 6)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:20/255.0 green:155/255.0 blue:55/255.0 alpha:1.0], [UIColor colorWithWhite:0.3 alpha:1.0]]];
        }
        else if(indexPath.row == 7)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:0/255.0 green:170/255.0 blue:255/255.0 alpha:1.0], [UIColor colorWithWhite:0.2 alpha:1.0]]];
        }
        else if(indexPath.row == 8)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:36/255.0 green:95/255.0 blue:222/255.0 alpha:1.0], [UIColor colorWithWhite:0.1 alpha:1.0]]];
        }
        else if(indexPath.row == 9)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[[UIColor colorWithRed:90/255.0 green:43/255.0 blue:172/255.0 alpha:1.0], [UIColor colorWithWhite:0. alpha:1.0]]];
        }
        else if(indexPath.row == 10)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType colors:@[FLAT_DETAIL_BUTTON_DEFAULT_COLOR, FLAT_DISCLOSURE_INDICATOR_DEFAULT_COLOR]];
        }
    }
    else
    {
        if(indexPath.row == 0)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:255/255.0 green:17/255.0 blue:95/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 1)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:208/255.0 green:44/255.0 blue:55/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 2)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:245/255.0 green:142/255.0 blue:4/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 3)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:230/255.0 green:241/255.0 blue:5/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 4)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:202/255.0 green:190/255.0 blue:1/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 5)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:140/255.0 green:255/255.0 blue:39/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 6)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:20/255.0 green:155/255.0 blue:55/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 7)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:0/255.0 green:170/255.0 blue:255/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 8)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:36/255.0 green:95/255.0 blue:222/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 9)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:90/255.0 green:43/255.0 blue:172/255.0 alpha:1.0]];
        }
        else if(indexPath.row == 10)
        {
            cell.accessoryView = [MSCellAccessory accessoryWithType:accessoryType color:[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1.0]];
        }
    }
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    cell.backgroundColor = [UIColor whiteColor];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end