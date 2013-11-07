//
//  DietPackageDetailViewController.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/7/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "DietPackageDetailViewController.h"
#import "CellWithLeftImage.h"

@interface DietPackageDetailViewController ()

@end

@implementation DietPackageDetailViewController{
    NSArray *data;
}

- (void) mapDataonView{
    if(_dietDict){
        [self.navigationItem setTitle:_dietDict[@"dietPackage"]];
    }
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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    [self mapDataonView];
    
    data = @[@{@"icon":@"YUNAS", @"tage":@"(14 Tags)", @"dietName":@"[Diet 1]", @"favorite":@"fav"},
             @{@"icon":@"YUNAS", @"tage":@"(20 Tags)", @"dietName":@"[Diet 2]", @"favorite":@"fav"},
             @{@"icon":@"YUNAS", @"tage":@"(2 Tags)", @"dietName":@"[Diet 3]", @"favorite":@""},
             @{@"icon":@"YUNAS", @"tage":@"(6 Tags)", @"dietName":@"[Diet 4]", @"favorite":@""},
             @{@"icon":@"YUNAS", @"tage":@"(7 Tags)", @"dietName":@"[Diet 5]", @"favorite":@""},
             @{@"icon":@"YUNAS", @"tage":@"(25 Tags)", @"dietName":@"[Diet 6]", @"favorite":@""},
             @{@"icon":@"YUNAS", @"tage":@"(5 Tags)", @"dietName":@"[Diet 7]", @"favorite":@""},
             @{@"icon":@"YUNAS", @"tage":@"(2 Tags)", @"dietName":@"[Diet 8]", @"favorite":@""}];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CellWithLeftImage";
    NSDictionary *dict = data[indexPath.row];
    
    UITableViewCell *cell = [CellWithLeftImage tableView:tableView cellWithLeftImageWithIdentifier:CellIdentifier];
    [(CellWithLeftImage*)cell mapDataOnCellFromDict:dict];
//    [((CellWithLeftImage*)cell).favorite setFrame:CGRectMake(0,0,12,12)];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
}

@end
