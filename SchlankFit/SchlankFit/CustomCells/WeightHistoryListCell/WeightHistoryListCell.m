//
//  WeightHistoryListCell.m
//  SchlankFit
//
//  Created by Ans Riaz on 11/12/13.
//  Copyright (c) 2013 Prinovis. All rights reserved.
//

#import "WeightHistoryListCell.h"

@implementation WeightHistoryListCell

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

- (IBAction)deleteCell:(id)sender {
    
}

- (IBAction)deleteImageButton:(id)sender {
    
}

-(void) setDateLabel:(NSString *)_d withWeight:(NSString*)_w{
    [self.dateLabel setText:_d];
    [self.weightLabel setText:_w];
}

+(WeightHistoryListCell*)tableView:(UITableView*)tableView weightHistoryCellWithIdentifier:(NSString*)identifier
{
    WeightHistoryListCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray *arr = [[NSBundle mainBundle] loadNibNamed:@"WeightHistoryListCell" owner:self options:nil];
        cell = [arr objectAtIndex:0];
    }
    
    return cell;
}

@end
