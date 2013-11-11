//
//  LeftImageCell.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/11/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "LeftImageCell.h"

@implementation LeftImageCell

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

-(void) setTitle:(NSString *)title withIcon:(NSString*)image{
        [self.title setText:title];
        [self.icon setImage:[UIImage imageNamed:image]];
}

+(LeftImageCell *) tableView:(UITableView*)tableView cellWithLeftImageWithIdentifier:(NSString*)identifier {
    LeftImageCell * cell = nil ;
    
    cell = (LeftImageCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
