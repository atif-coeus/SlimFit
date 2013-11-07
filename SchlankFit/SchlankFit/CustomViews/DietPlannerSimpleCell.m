//
//  SecondCustomCell.m
//  SlimFit
//
//  Created by Ans Riaz on 11/4/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPlannerSimpleCell.h"

@implementation DietPlannerSimpleCell

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


-(void) setTitle:(NSString*)_title withSubTitle:(NSString*)_subTitle{
    
    [self.rowTitle setText:_title];
    [self.rowTag   setText:_subTitle];


}


+(DietPlannerSimpleCell *) tableView:(UITableView*)tableView secondCustomCellWithIdentifier:(NSString*)identifier {
    DietPlannerSimpleCell * cell = nil ;
    
    cell = (DietPlannerSimpleCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
