//
//  PersonalInfo.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "PersonalInfo.h"
#import "MainProfilePersonalInfoCell.h"

@implementation PersonalInfo{
    NSMutableArray *data;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    
    NSDictionary *dict1 = @{@"weight":@"", @"height":@"", @"family":@"", @"age":@""};
    NSDictionary *dict2 = @{@"weight":@"40 kg", @"height":@"140 cm", @"family":@"", @"age":@"18"};
    NSDictionary *dict3 = @{@"weight":@"41 kg", @"height":@"141 cm", @"family":@"männlich", @"age":@"19"};
    NSDictionary *dict4 = @{@"weight":@"42 kg", @"height":@"142 cm", @"family":@"weiblich", @"age":@"20"};
    NSDictionary *dict5 = @{@"weight":@"43 kg", @"height":@"143 cm", @"family":@"", @"age":@"21"};
    NSDictionary *dict6 = @{@"weight":@"44 kg", @"height":@"144 cm", @"family":@"", @"age":@"22"};
    
    data = [NSMutableArray array];
    [data addObject:[dict1 mutableCopy]];
    [data addObject:[dict2 mutableCopy]];
    [data addObject:[dict3 mutableCopy]];
    [data addObject:[dict4 mutableCopy]];
    [data addObject:[dict5 mutableCopy]];
    [data addObject:[dict6 mutableCopy]];

    
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

#pragma tableview

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier = @"MainProfilePersonalInfoCell";
    
    UITableViewCell *cell = [MainProfilePersonalInfoCell tableView:tableView personalInfoWithIdentifier:cellIdentifier];
    
    NSDictionary *dict = data[indexPath.row];
    [(MainProfilePersonalInfoCell*)cell mapData:dict];
    
    
    return cell;
}

@end
