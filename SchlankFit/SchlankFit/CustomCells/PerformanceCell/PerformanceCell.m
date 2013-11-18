//
//  PerformanceCell.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "PerformanceCell.h"

@implementation PerformanceCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)mapData:(NSDictionary *)dict{
    [self.icon setImage:[UIImage imageNamed:dict[@"icon"]]];
    [self.title setText:dict[@"title"]];
    [self.subTitle setText:dict[@"subTitle"]];
}

+(PerformanceCell*)tableView:(UITableView*)tableView performanceCellWithIdentifier:(NSString*)identifier
{
    PerformanceCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"PerformanceCell" owner:self options:nil];
        cell = [arr objectAtIndex:0];
    }
    
    return cell;
}

@end
