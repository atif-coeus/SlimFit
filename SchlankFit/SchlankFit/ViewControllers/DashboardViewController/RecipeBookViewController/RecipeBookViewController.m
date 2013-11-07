//
//  RecipeViewController.m
//  SchlankFit
//
//  Created by Muhammad Rashid on 07/11/2013.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "RecipeBookViewController.h"
#import "FilterRecipeCell.h"

@interface RecipeBookViewController () <UISearchBarDelegate>{
}

@end

@implementation RecipeBookViewController {

    BOOL isSearchOn;

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

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source
//
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return recipes.count;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if (isSearchOn) {
//        
//        static NSString *identifier = @"cell";
//        
//        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//        
//        if (cell == nil) {
//            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        }
//        
//        
//        
//    }
//    
//    static NSString *CellIdentifier = @"recipeCell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"%d",indexPath.row];
//    
//    return cell;
//}

#pragma mark - UISearchBarDelegate

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
        NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {

    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {

    NSLog(@"%s",__PRETTY_FUNCTION__);
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar {
    NSLog(@"%s",__PRETTY_FUNCTION__);
}

@end
