//
//  ShoppingListViewController.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/8/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "ShoppingListViewController.h"
#import "UnderLineLabel.h"
#import "ShoppingListNotifier.h"
#import "ShoppingListCell.h"

@interface ShoppingListViewController (){
    NSMutableArray *data;
    NSTimer *timer;
    int sec;
}

@end

const NSString *itemAmoutKey = @"amount";
const NSString *itemUnitKey = @"unit";
const NSString *itemNameKey = @"name";
const NSString *strikeThroughKey = @"strikethrough";

@implementation ShoppingListViewController

- (IBAction)editButtonPressed:(UIBarButtonItem *)editButton {
    
    if (self.tableView.editing)
    {
        [self.tableView setEditing:NO animated:YES];
        editButton.title = @"Bearbeiten";
    }
    else
    {
        [self.tableView setEditing:YES animated:YES];
        editButton.title = @"Abbrechen";
        [self.tableView reloadData];
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) removeAlert{
    NSLog(@"remove alert");
    ShoppingListNotifier *view = (ShoppingListNotifier*) [self.view viewWithTag:1000];
    [view removeFromSuperview];
}

-(void)showAlert{
    NSLog(@"show alert");
    ShoppingListNotifier *notifierView = (ShoppingListNotifier *)[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ShoppingListNotifier class]) owner:nil options:nil][0];
    notifierView.frame = CGRectMake(10, 10, notifierView.bounds.size.width, notifierView.bounds.size.height);
    [notifierView setTag:1000];
    [self.view addSubview:notifierView];
    
    [self performSelector:@selector(removeAlert) withObject:nil afterDelay:5.0];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSDictionary *dict1 = @{itemAmoutKey:@"½", itemUnitKey:@"kg", itemNameKey:@"Kartoffeln", strikeThroughKey:[NSNumber numberWithBool:NO]};
    NSDictionary *dict2 = @{itemAmoutKey:@"1", itemUnitKey:@"Prise", itemNameKey:@"Salz", strikeThroughKey:[NSNumber numberWithBool:NO]};
    
    NSDictionary *dict3 = @{itemAmoutKey:@"1", itemUnitKey:@"Messerspitze", itemNameKey:@"Muskat", strikeThroughKey:[NSNumber numberWithBool:NO]};
    
    NSDictionary *dict4 = @{itemAmoutKey:@"1", itemUnitKey:@"EL", itemNameKey:@"Kartoffelstärke", strikeThroughKey:[NSNumber numberWithBool:NO]};
    
    NSDictionary *dict5 = @{itemAmoutKey:@"", itemUnitKey:@"", itemNameKey:@"Erdbeeren", strikeThroughKey:[NSNumber numberWithBool:NO]};
    
    NSDictionary *dict6 = @{itemAmoutKey:@"1", itemUnitKey:@"Kasten", itemNameKey:@"Wasser", strikeThroughKey:[NSNumber numberWithBool:NO]};

    NSDictionary *dict7 = @{itemAmoutKey:@"", itemUnitKey:@"", itemNameKey:@"Milch", strikeThroughKey:[NSNumber numberWithBool:NO]};
    
    data = [NSMutableArray array];
    [data addObject:[dict1 mutableCopy]];
    [data addObject:[dict2 mutableCopy]];
    [data addObject:[dict3 mutableCopy]];
    [data addObject:[dict4 mutableCopy]];
    [data addObject:[dict5 mutableCopy]];
    [data addObject:[dict6 mutableCopy]];
    [data addObject:[dict7 mutableCopy]];
    
    sec = 0;
    
    [self performSelector:@selector(showAlert) withObject:nil afterDelay:1.0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void) addLine:(UIView*)view{
//    
//    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(10, view.frame.size.height/2, view.bounds.size.width, 5)];
//    lineView.backgroundColor = [UIColor blackColor];
//    [view addSubview:lineView];
//
//}

-(void)cellSwipe:(UISwipeGestureRecognizer *)gesture {
    
    UITableViewCell *view = (UITableViewCell *)gesture.view;
    int index = view.contentView.tag;
    NSMutableDictionary *dict = data[index];
    
    [dict setObject:[NSNumber numberWithBool:YES] forKey:strikeThroughKey];
    
    [self.tableView reloadData];
    [self performSelector:@selector(setDataIndexForObject:) withObject:dict afterDelay:0.5];
    
//    UnderLineLabel *lbl = (UnderLineLabel *)[view.contentView viewWithTag:100];
//    [lbl setShouldStrikeOut:YES];
//    [lbl setNeedsDisplay];
    
}

- (void)setDataIndexForObject:(NSDictionary *)dict_ {
    
    [data removeObject:dict_];
    [data addObject:dict_];
    [self.tableView reloadData];
    
}

-(void) addGesture:(UITableViewCell*)cell{
    
    UISwipeGestureRecognizer* gestureR;
    gestureR = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(cellSwipe:)];
    gestureR.direction = UISwipeGestureRecognizerDirectionRight;
    [cell addGestureRecognizer:gestureR];

}

//-(void) accessoryView:(UITableViewCell*)cell{
//    
//    UIView *accessoryView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
//    accessoryView.backgroundColor = [UIColor lightGrayColor];
//    
//    cell.editingAccessoryView = accessoryView;
//}

#pragma mark - DropDown Delegate Method
-(void) itemSelectedWithText:(NSString*)text atIndex:(int)index{
    
    NSLog(@"%s %@",__PRETTY_FUNCTION__,text);
    
}

- (void) itemUnitPressed:(UIButton*)sender{
    
    NSArray *arr = @[@"1 Tag", @"2 Tage", @"3 Tage", @"4 Tage", @"5 Tage", @"6 Tage", @"7 Tage", @"8 Tage", @"9 Tage"];
    
    if (dropDownPicker) {
        dropDownPicker = nil;
    }
    
    dropDownPicker = [DropDownController new];
    [dropDownPicker setDataArr:arr];
    [dropDownPicker setDelegate:self];
    [dropDownPicker presentDropDownInView:self.view];

}

-(ShoppingListCell*)tableView:(UITableView*)tableView shoppingListCellWithIdentifier:(NSString*)identifier andData:(NSDictionary*)dict
{
    UnderLineLabel *mLabel;
    
    ShoppingListCell *cell = (ShoppingListCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:@"ShoppingListCell" owner:self options:nil];
        cell= [arr objectAtIndex:0];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        mLabel = [[UnderLineLabel alloc] initWithFrame:CGRectMake(20,0,200,55)];
        [mLabel setFont:[UIFont systemFontOfSize:17]];
        [mLabel setNumberOfLines:0];
        [mLabel setTag:100];
        [cell.contentView addSubview:mLabel];
        
        [cell.itemName setDelegate:self];
        [cell.itemAmount setDelegate:self];
        [cell.itemUnit setTitle:dict[itemUnitKey] forState:UIControlStateNormal];
        [cell.itemName setPlaceholder:dict[itemNameKey]];
        [cell.itemAmount setPlaceholder:dict[itemAmoutKey]];
        [cell.itemUnit addTarget:self action:@selector(itemUnitPressed:) forControlEvents:UIControlEventTouchUpInside];
        
    } else {
        mLabel = (UnderLineLabel *)[cell.contentView viewWithTag:100];
    }
    
    NSString *text;
    if(itemAmoutKey != nil && itemUnitKey != nil){
        text = [NSString stringWithFormat:@"%@ %@ %@",dict[itemAmoutKey],dict[itemUnitKey],dict[itemNameKey]];
    } else {
        text = [NSString stringWithFormat:@"%@",dict[itemNameKey]];
    }
    [mLabel setText:text];
    
    if ([dict[strikeThroughKey] boolValue]) {
        [mLabel setShouldStrikeOut:YES];
        [mLabel setNeedsDisplay];
    } else {
        [mLabel setShouldStrikeOut:NO];
        [mLabel setNeedsDisplay];
    }
    
    [self addGesture:cell];
    
    return cell;
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
    static NSString *cellIdentifier = @"ShoppingListCell";
    NSDictionary *dict = data[indexPath.row];
    
    ShoppingListCell *cell = (ShoppingListCell*)[self tableView:tableView shoppingListCellWithIdentifier:cellIdentifier andData:dict];
    
    cell.contentView.tag = indexPath.row;
    
    return cell;
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

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [data removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

-(void) tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%i",indexPath.row);

    ShoppingListCell *cell = (ShoppingListCell*)[self.tableView cellForRowAtIndexPath:indexPath];
    UnderLineLabel *title = (UnderLineLabel*)[cell.contentView viewWithTag:100];
    [title setHidden:YES];
    [cell.editView setHidden:NO];
    
}

@end
