//
//  DietPackageTableViewController.m
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPackageTableViewController.h"
#import "DietPackageCell.h"
//#import "DietPackageDetailViewController.h"

@interface DietPackageTableViewController (){
    NSArray *data;
}

@end

@implementation DietPackageTableViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
//    DietPackageDetailViewController * detailVC = [segue destinationViewController];
    
//    [detailVC setDietDict:sender];
    
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
    
    data = @[@{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"Free!", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"gekauft", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"MS", @"price":@"0,89€", @"diaten":@"(35 Diäten)"}];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [data count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DietPackageCell";
    NSDictionary *dict = data[indexPath.row];
    
    UITableViewCell *cell = [DietPackageCell tableView:tableView ownDietCellWithIdentifier:CellIdentifier];
    [(DietPackageCell*)cell mapDataOnCellFromDict:dict];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSDictionary *dict = data[indexPath.row];
    
    [self performSegueWithIdentifier:@"Hello" sender:dict];
}

@end
