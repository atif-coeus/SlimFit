//
//  PerformanceNutrition.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "PerformanceNutrition.h"
#import "PerformanceCell.h"

@implementation PerformanceNutrition

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 40; //play around with this value
}

//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
//    
//    if (section == 0){
//        return @"Leistungsabfrage";
//    }
//    if (section == 1){
//        return @"Schrittlänge";
//    }
//    return nil;
//}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    NSString *title;
    if (section == 0){
        title = @"Leistungsabfrage";
    }
    if (section == 1){
        title = @"Schrittlänge";
    }
    
    CGRect headerViewRect = CGRectMake(0.0,0.0,320,40);
    UIView* headerView = [[UIView alloc] initWithFrame:headerViewRect];
    headerView.backgroundColor = [UIColor clearColor];
    
    UILabel *sectionHeaderTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    
    sectionHeaderTitle.text = title;
    CGSize textSize = [sectionHeaderTitle.text sizeWithAttributes:@{NSFontAttributeName:sectionHeaderTitle.font}];
    
    [sectionHeaderTitle setFrame:CGRectMake(320/2 - textSize.width/2, 5, textSize.width, textSize.height)];
    [headerView addSubview:sectionHeaderTitle];
    
    return headerView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 5;
    } else {
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 44;
    } else {
        return 180;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        NSString *cellIdentifier=@"Cell";

        NSDictionary *dict = @{@"title":@"sehr niedrig",@"subTitle":@"ausschließlich sitzende/liegende Tätigkeit", @"icon":@""};
        UITableViewCell *cell = [PerformanceCell tableView:tableView performanceCellWithIdentifier:cellIdentifier];
        [(PerformanceCell *)cell mapData:dict];
        
        return cell;
    }
    else if (indexPath.section == 1) {
        NSString *pickerCellIdentifier=@"PickerCell";
        UITableViewCell *pickerCell=[tableView dequeueReusableCellWithIdentifier:pickerCellIdentifier];
        if (pickerCell==nil) {
            pickerCell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:pickerCellIdentifier];
            
//            UIPickerView *pickerView=[[UIPickerView alloc] initWithFrame:CGRectMake((320/2)-50, 0, 100, 100)];
            
            UIPickerView *pickerView; //=[[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 162)];
            pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(10, 10, 320, 180)];
            [pickerView setDelegate:self];
//            pickerView.transform = CGAffineTransformMakeScale(.4, 0.7);
//            pickerView.dataSource = self;
//            pickerView.delegate = self;
            [pickerCell addSubview:pickerView];
            
        }
        
        return pickerCell;
    }
    
    return nil;
}

#pragma mark - UIPickerView

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 9;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"%d cm", row+40];
}



//#pragma mark - DropDown Delegate Method
//-(void) itemSelectedWithText:(NSString*)text atIndex:(int)index{
//    
//    NSLog(@"%s %@",__PRETTY_FUNCTION__,text);
//    
//}
//
//- (void) itemUnitPressed:(UIButton*)sender{
//    
//    NSArray *arr = @[@"1 Tag", @"2 Tage", @"3 Tage", @"4 Tage", @"5 Tage", @"6 Tage", @"7 Tage", @"8 Tage", @"9 Tage"];
//    
//    if (dropDownPicker) {
//        dropDownPicker = nil;
//    }
//    
//    dropDownPicker = [DropDownController new];
//    [dropDownPicker setDataArr:arr];
//    [dropDownPicker setDelegate:self];
//    [dropDownPicker presentDropDownInView:self.tableView];
//    
//}

@end
