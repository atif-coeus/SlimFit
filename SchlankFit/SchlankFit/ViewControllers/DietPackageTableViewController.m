//
//  DietPackageTableViewController.m
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPackageTableViewController.h"
#import "DietPackageCell.h"
#import "DietPackageBuyViewController.h"

@interface DietPackageTableViewController (){
    NSArray *data;
}

@end

@implementation DietPackageTableViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    DietPackageBuyViewController * detailVC = [segue destinationViewController];
    
    [detailVC setDietDict:sender];
    
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
    
    data = @[@{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"Free!", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"gekauft", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"0,89€", @"diaten":@"(35 Diäten)"},
            @{@"icon":@"YUNAS", @"dietPackage":@"[Diet Package 1]", @"price":@"0,89€", @"diaten":@"(35 Diäten)"}];
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
    return [data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DietPackageCell";

    NSDictionary *dict = data[indexPath.row];
    
    UITableViewCell *cell = [DietPackageCell tableView:tableView ownDietCellWithIdentifier:CellIdentifier];
    [(DietPackageCell*)cell mapDataOnCellFromDict:dict];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSDictionary *dict = data[indexPath.row];
    NSString *str = dict[@"price"];
    if([str isEqualToString:@"gekauft"]){
        [self performSegueWithIdentifier:@"DietPackageDetail" sender:dict];
//        [self performSegueWithIdentifier:@"DietPPackageDetail" sender:nil];
    } else {
        [self performSegueWithIdentifier:@"DietPackageBuy" sender:dict];
    }
}

@end
