//
//  DietPlannerViewController.m
//  SchlankFit
//
//  Created by Muhammad Atif on 01/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "DietPlannerViewController.h"
#import "DietPlannerSpecialCell.h"
#import "DietPlannerSimpleCell.h"

@interface DietPlannerViewController (){
    BOOL userDiet;
}

@end

@implementation DietPlannerViewController

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
	// Do any additional setup after loading the view.
    
    userDiet = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view modified data source
- (UITableViewCell *)tableView:(UITableView *)tableView genericCellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    static NSString *CellIdentifier = @"DietPlannerSimpleCell";
    cell = [DietPlannerSimpleCell tableView:tableView secondCustomCellWithIdentifier:CellIdentifier];
    if(indexPath.row ==0){
        [(DietPlannerSimpleCell*)cell setTitle:@"Eigene Diät anlegen" withSubTitle:@"Free!"];
    }
    else if (indexPath.row == 1) {
        [(DietPlannerSimpleCell*)cell setTitle:@"Diätpakete" withSubTitle:@""];
    }
    else if (indexPath.row == 2){
        [(DietPlannerSimpleCell*)cell setTitle:@"Meine Diäten" withSubTitle:@""];
    }
    
    return cell;
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if(userDiet){
        return 4;
    }else{
        return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell;
    
    if(indexPath.row == 0 && userDiet){
        static NSString *CellIdentifier = @"DietPlannerSpecialCell";
        cell = [DietPlannerSpecialCell tableView:tableView customCellWithIdentifier:CellIdentifier];
        [(DietPlannerSpecialCell*)cell setTitle:@"Laufende Diät:" withSubTitle:@"[Diet Name]" andTag:@"Tag 5"];
    }
    else{
        NSIndexPath *indexPath1 = [NSIndexPath indexPathForRow:indexPath.row inSection:indexPath.section];
        int tmpIndex = indexPath.row;
        if (userDiet) {
            tmpIndex -=1;
            indexPath1 = [NSIndexPath indexPathForRow:tmpIndex inSection:indexPath.section];
        }
        cell = [self tableView:tableView genericCellForRowAtIndexPath:indexPath1];
        
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}


@end
