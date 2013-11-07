//
//  CustomCell.m
//  SlimFit
//
//  Created by Ans Riaz on 11/4/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPlannerSpecialCell.h"

@implementation DietPlannerSpecialCell

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

-(void) setTitle:(NSString*)_title withSubTitle:(NSString*)_subTitle andTag:(NSString*)_tagVal{
    [self.customLabel setText:_title];
    [self.dietName setText:_subTitle];
    [self.dietName2 setText:_tagVal];
}


+(DietPlannerSpecialCell *) tableView:(UITableView*)tableView customCellWithIdentifier:(NSString*)identifier {
    DietPlannerSpecialCell * cell = nil ;
    
    cell = (DietPlannerSpecialCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
