//
//  MainProfilePersonalInfoCell.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "MainProfilePersonalInfoCell.h"

@implementation MainProfilePersonalInfoCell

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

-(void) mapData:(NSDictionary*)dict{
    [self.weight setText:dict[@"weight"]];
    [self.height setText:dict[@"height"]];
    [self.family setText:dict[@"family"]];
    [self.age setText:dict[@"age"]];
}

+(MainProfilePersonalInfoCell *) tableView:(UITableView*)tableView personalInfoWithIdentifier:(NSString*)identifier {
    MainProfilePersonalInfoCell * cell = nil ;
    
    cell = (MainProfilePersonalInfoCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
