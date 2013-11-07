//
//  DietPackageCell.m
//  SlimFit
//
//  Created by Ans Riaz on 11/6/13.
//  Copyright (c) 2013 Rizh. All rights reserved.
//

#import "DietPackageCell.h"

@implementation DietPackageCell

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

-(void) mapDataOnCellFromDict:(NSDictionary*)data{
    if(data){
        [self.dietPackName setText:data[@"dietPackage"]];
        [self.dietIcon setImage:[UIImage imageNamed:data[@"icon"]]];
        [self.diaten setText:data[@"diaten"]];
        [self.price setText:data[@"price"]];
    }
}

+(DietPackageCell *) tableView:(UITableView*)tableView ownDietCellWithIdentifier:(NSString*)identifier {
    DietPackageCell * cell = nil ;
    
    cell = (DietPackageCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        NSArray * arr= [[NSBundle mainBundle] loadNibNamed:identifier owner:self options:nil];
        cell= [arr objectAtIndex:0];
    }
    return cell;
}

@end
