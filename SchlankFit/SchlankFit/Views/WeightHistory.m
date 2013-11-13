//
//  WeightHistory.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "WeightHistory.h"
#import "WeightHistoryListCell.h"

@implementation WeightHistory{
    NSMutableArray *data;
}

const NSString *dateKey = @"date";
const NSString *weightKey = @"weight";

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super initWithCoder:aDecoder];
    if (self) {
    
        NSDictionary *dict1 = @{dateKey:@"03.11.2013", weightKey:@"79 kg"};
        NSDictionary *dict2 = @{dateKey:@"03.11.2013", weightKey:@"76 kg"};
        NSDictionary *dict3 = @{dateKey:@"03.11.2013", weightKey:@"71 kg"};
        NSDictionary *dict4 = @{dateKey:@"03.11.2013", weightKey:@"72 kg"};
        NSDictionary *dict5 = @{dateKey:@"03.11.2013", weightKey:@"70 kg"};
        NSDictionary *dict6 = @{dateKey:@"03.11.2013", weightKey:@"69 kg"};
        
        data = [NSMutableArray array];
        [data addObject:[dict1 mutableCopy]];
        [data addObject:[dict2 mutableCopy]];
        [data addObject:[dict3 mutableCopy]];
        [data addObject:[dict4 mutableCopy]];
        [data addObject:[dict5 mutableCopy]];
        [data addObject:[dict6 mutableCopy]];
        
        [self.segmentedControl setSelectedSegmentIndex:2];
    }
    
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
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

-(void) deleteButtonPressed:(UIButton*) btn{
    int index = btn.tag-1;
    [data removeObjectAtIndex:index];
    [self.tableView reloadData];
}

-(void) imageButtonPressed:(UIButton*)btn{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:btn.tag-1 inSection:0];
    WeightHistoryListCell *cell = (WeightHistoryListCell*)[self.tableView cellForRowAtIndexPath:indexPath];
    if (![btn isSelected]) {
        cell.deleteButton.hidden = NO;
    }else{
        cell.deleteButton.hidden = YES;
    }
    btn.selected = !btn.selected;
}

#pragma tableview

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [data count];
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = @"WeightHisoryCell";
    
    WeightHistoryListCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"WeightHistoryListCell" owner:self options:nil];
        cell = [arr objectAtIndex:0];
        
        cell.deleteButton.tag = indexPath.row + 1;
        [cell.deleteButton addTarget:self action:@selector(deleteButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        cell.imageButton.tag = indexPath.row + 1;
        [cell.imageButton addTarget:self action:@selector(imageButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        NSDictionary *dict = data[indexPath.row];
        [cell setDateLabel:dict[dateKey] withWeight:dict[weightKey]];
    }
    
    return cell;
}

- (IBAction)tabChanged:(id)sender {
    if(self.segmentedControl.selectedSegmentIndex == 0){
        NSLog(@"segment 1");
    }
    if(self.segmentedControl.selectedSegmentIndex == 1){
        
    }
}

@end
