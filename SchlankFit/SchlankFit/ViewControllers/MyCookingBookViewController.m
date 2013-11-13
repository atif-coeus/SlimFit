//
//  MyCookingBookViewController.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/13/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "MyCookingBookViewController.h"
#import "MyCookingBookCell.h"

@interface MyCookingBookViewController (){
    NSMutableArray *data;
    NSMutableArray *rows;
    BOOL isEdit;
}

@end

const NSString *recipeNameKey = @"recipe";
const NSString *typeKey = @"type";
const NSString *ratingKey = @"rating";
const NSString *imageKey = @"image";
const NSString *timeKey = @"time";

@implementation MyCookingBookViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) removeAlert{
    [self.alertView setHidden:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    isEdit = NO;
    
    NSDictionary *dict1 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Leicht", imageKey:@"", timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict2 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Leicht", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict3 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Leicht", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict4 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Mittel", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict5 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Leicht", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict6 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Schwer", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict7 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Schwer", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};
    
    NSDictionary *dict8 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Schwer", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};

    NSDictionary *dict9 = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Schwer", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};

    NSDictionary *dict = @{recipeNameKey:@"[Recipe Name]", typeKey:@"Schwer", imageKey:@"",timeKey:@"30 min.", ratingKey:[NSNumber numberWithInt:3]};

    
    data = [NSMutableArray array];
    [data addObject:[dict1 mutableCopy]];
    [data addObject:[dict2 mutableCopy]];
    [data addObject:[dict3 mutableCopy]];
    [data addObject:[dict4 mutableCopy]];
    [data addObject:[dict5 mutableCopy]];
    [data addObject:[dict6 mutableCopy]];
    [data addObject:[dict7 mutableCopy]];
    [data addObject:[dict8 mutableCopy]];
    [data addObject:[dict9 mutableCopy]];
    [data addObject:[dict mutableCopy]];
    
    rows = [NSMutableArray array];
    
    [self performSelector:@selector(removeAlert) withObject:nil afterDelay:8.0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) imageButtonPressed:(UIButton*)btn{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:btn.tag-1 inSection:0];
    MyCookingBookCell *cell = (MyCookingBookCell*)[self.tableView cellForRowAtIndexPath:indexPath];
    
    NSDictionary *dict = @{@"index":[NSNumber numberWithInt:indexPath.row]};
    NSLog(@"%i", btn.tag-1);
    if (![btn isSelected]) {
//        cell.deleteButton.hidden = NO;
        [rows addObject:dict];
    }else{
//        cell.deleteButton.hidden = YES;
        [rows removeObject:dict];
    }
    btn.selected = !btn.selected;
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
    static NSString *CellIdentifier = @"CookBookCell";
//    UITableViewCell *cell = [MyCookingBookCell tableView:tableView cookBookCellWithIdentifier:CellIdentifier];
    
    MyCookingBookCell * cell = nil ;
    
    cell = (MyCookingBookCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"MyCookingBookCell" owner:self options:nil];
        cell= [arr objectAtIndex:0];
        
        NSDictionary *dict = data[indexPath.row];
        [cell mapData:dict];
        cell.deleteButton.tag = indexPath.row + 1;
        [cell.deleteButton addTarget:self action:@selector(imageButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        if (isEdit) {
            [(MyCookingBookCell*)cell isTableEditingMode:isEdit];
        }

    }
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
}

-(void) tableView:(UITableView*)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath{
    
    if (sourceIndexPath == destinationIndexPath) {
        return;
    }
    
    NSMutableDictionary *sourceData = data[sourceIndexPath.row];
    
    [data removeObjectAtIndex:sourceIndexPath.row];
    
    [data insertObject:sourceData atIndex:[destinationIndexPath row]];
    
    [tableView reloadData];
}

- (IBAction)editButton:(id)sender {
    UIButton *button;
    if ([sender isKindOfClass:[UIButton class]]) {
        button = (UIButton*)sender;
    }
    if (!isEdit)
    {
        isEdit = YES;
        [self.tableView reloadData];
        [button setTitle:@"Abbrechen" forState:UIControlStateNormal];
        [self.toolBar setHidden:NO];
        
    }
    else
    {
        isEdit = NO;
        [button setTitle:@"Bearbeiten" forState:UIControlStateNormal];
        [self.tableView reloadData];
        [self.toolBar setHidden:YES];
    }
}

-(IBAction)deleteRows:(id)sender{
    for (int i= 0; i<[rows count]; i++) {
        NSDictionary *dict = rows[i];
        int index = ((NSNumber*)dict[@"index"]).intValue;
        NSLog(@"%i",index);
        
        [data removeObjectAtIndex:index];
    }
    
    rows = nil;
    rows = [NSMutableArray array];
    
    [self.tableView reloadData];
}

@end
